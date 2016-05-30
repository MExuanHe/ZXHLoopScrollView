# ZXHLoopScrollView
一键式集成轮播组件
App中不可或缺的广告轮播图组件，现在开源出来了，希望对大家有帮助！使用过程中有出现任何bug，都会很快帮助解决！

![image](file:///Users/zhangxuanhe/Desktop/tufit.gif)

#有什么特性

用一个第三方库，首先需要了解这个三方库有什么特性，为什么值得使用它！看看下面的说明紧！

##特性1：无缝无限循环滚动

我相信每一个想要自己写这个无限滚动显示广告图片的开发者，都会遇到这么个问题：滚动到最后一张后，再切换到第一张时怎么动画效果这么难看呢？根本就是到末尾后就直接切换到第一张，因此效果很不友好。

`ZXHLoopScrollView`就很好地解决了这个问题。这个库使用了`UICollectionView`的特性，很巧妙地实现了这个无限滚动的效果。

##特性2：直接使用block版本API

原来我也想使用别人的开源库，但是使用起来很困难，一大堆的`API`，维护起来太麻烦。因此，才决定自己写一套库来解决这个麻烦。

这里提供了唯一地创建控件的方法：

```
+ (instancetype)loopScrollViewWithFrame:(CGRect)frame
                              imageUrls:(NSArray *)imageUrls
                           timeInterval:(NSTimeInterval)timeInterval
                              didSelect:(ZXHLoopScrollViewDidSelectItemBlock)didSelect
                              didScroll:(ZXHLoopScrollViewDidScrollBlock)didScroll;
```

看到连同`didSelect`参数和`didScroll`参数了吗？前者就是点击某个广告图片时的回调`block`，而后者就是滚动到某个广告时的回调，是不是很简单？

###支持定时器的控制

另外，还封装了定时器的`api`，可方便地暂停或继续开启：

```
/**
 *  Pause the timer. Usually you need to pause the timer when the view disappear.
 */
- (void)pauseTimer;

/**
 *  Start the timer immediately. If you has pause the timer, you may need to start 
 *  the timer again when the view appear.
 */
- (void)startTimer;
```


###特性3：提供图片切换的淡入淡出效果

ZXHLoadImageView类是继承于UIImageView，提供了下载图片及缓存的功能，包括获取缓存的大小、清空缓存、支持自动设置显示成圆形头像。

####提供了公开的裁剪图片的API：

```
/**
 *	此处公开此API，是方便大家可以在别的地方使用。等比例剪裁图片大小到指定的size
 *
 *	@param image 剪裁前的图片
 *	@param size	最终图片大小
 *  @param isScaleToMax 是取最大比例还是最小比例，YES表示取最大比例
 *
 *	@return 裁剪后的图片
 */
+ (UIImage *)clipImage:(UIImage *)image toSize:(CGSize)size isScaleToMax:(BOOL)isScaleToMax;
```

####支持自动处理图片大小并缓存

如果希望将下载的图片等比例缩放为imageView的大小，则可以设置为YES：

```
/**
 *
 *	是否自动将下载到的图片裁剪为UIImageView的size。默认为NO。
 *  若设置为YES，则在下载成功后只存储裁剪后的image
 */
@property (nonatomic, assign) BOOL shouldAutoClipImageToViewSize;
```

####支持下载失败重试

对于一个链接，如果下载失败了，下一次再请求时，可以再去下载一次。默认为重试2次，如果超过2次，则不会再去下载：

```
/**
 *
 *	指定URL下载图片失败时，重试的次数，默认为2次
 */
@property (nonatomic, assign) NSUInteger attemptToReloadTimesForFailedURL;
```


##特性4：自带下载、缓存

内部自带了图片下载功能及图片缓存功能，并且在收到内存警告时，也会清理掉图片缓存。

###喜欢就给个Star吧！