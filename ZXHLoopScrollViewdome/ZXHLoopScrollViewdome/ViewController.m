//
//  ViewController.m
//  自动轮播图
//
//  Created by    🐯 on 15/12/30.
//  Copyright © 2016年 张炫赫. All rights reserved.
//

#import "ViewController.h"
#import "ZXHLoopScrollView.h"
#import "Masonry.h"
#import "ZXHPageControl.h"

@interface ViewController ()
@property (nonatomic, weak) ZXHLoopScrollView *loop;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor lightGrayColor];
    // 这个图片会找不到，而显示默认图
    NSString *url = @"http://test.meirongzongjian.com/imageServer/user/3/42ccb9c75ccf5e910cd6f5aaf0cd1200.jpg";
    
    NSArray *images = @[[UIImage imageNamed:@"h4.jpg"],
                        [UIImage imageNamed:@"h3.jpg"],
                        [UIImage imageNamed:@"h1.jpg"],
                        [UIImage imageNamed:@"h2.jpg"],
                        ];
    
    NSArray *titles = @[@"Thank you for your support!",
                        @"Contact me if any quetion.",
                        @"Email me .",
                        @"Thank you again.",
                        ];
    
    // 当有导航条时，若距离上面不点满，或者被挡一部分，请一定要设置这一行，因为7.0之后self.view的起点坐标从
    // 状态栏开始的。
    
    //    self.edgesForExtendedLayout = UIRectEdgeNone;
    ZXHLoopScrollView *loop = [ZXHLoopScrollView loopScrollViewWithFrame:CGRectMake(0, 0, 320, 220) imageUrls:images timeInterval:1 didSelect:^(NSInteger atIndex) {
        
    } didScroll:^(NSInteger toIndex) {
        
    }];
    
    loop.backgroundColor = [UIColor whiteColor];
    loop.shouldAutoClipImageToViewSize = NO;
    
    loop.alignment = kPageControlAlignRight;
    loop.adTitles = titles;
    
    [self.view addSubview:loop];
    [loop mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.mas_equalTo(0);
        make.height.mas_equalTo(220);
        make.top.mas_equalTo(0);
    }];
    self.loop = loop;
    
    loop.pageControl.currentPageIndicatorTintColor = [UIColor purpleColor];
    // page control小圆点太小？可以修改的
    loop.pageControl.size = 10;
    
    // 不希望显示pagecontrol？
    //  loop.pageControl.hidden = YES;
    // 或者直接
    //  [loop.pageControl removeFromSuperview];
    
    // 默认的是UIViewContentModeScaleAspectFit
    //  loop.imageContentMode = UIViewContentModeScaleToFill;
    loop.imageContentMode = UIViewContentModeScaleAspectFill;
    
    NSLog(@"size: %llu", [loop imagesCacheSize]);
    [loop clearImagesCache];
    NSLog(@"size: %llu", [loop imagesCacheSize]);
    
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    [self.loop startTimer];
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    
    [self.loop pauseTimer];
}

@end
