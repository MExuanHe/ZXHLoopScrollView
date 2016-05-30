//
//  UIView+ZXHUIViewCommon.h
//  ZXHLoopScrollView
//
//  Created by huangyibiao on 15/9/2.
//  Copyright © 2015年 . All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 *  This is an really useful UIView category,with it, you can short a lot of codes.
 *
 *  Contact me if you want some kind of animation, I will try my best to update.
 *
 */
@interface UIView (ZXHUIViewCommon)

/**
 * @brief Shortcut for frame.origin.x.
 *        Sets frame.origin.x = originX
 */
@property (nonatomic) CGFloat ZXH_originX;

/**
 * @brief Shortcut for frame.origin.y
 *        Sets frame.origin.y = originY
 */
@property (nonatomic) CGFloat ZXH_originY;

/**
 * @brief Shortcut for frame.origin.x + frame.size.width
 *       Sets frame.origin.x = rightX - frame.size.width
 */
@property (nonatomic) CGFloat ZXH_rightX;

/**
 * @brief Shortcut for frame.origin.y + frame.size.height
 *        Sets frame.origin.y = bottomY - frame.size.height
 */
@property (nonatomic) CGFloat ZXH_bottomY;

/**
 * @brief Shortcut for frame.size.width
 *        Sets frame.size.width = width
 */
@property (nonatomic) CGFloat ZXH_width;

/**
 * @brief Shortcut for frame.size.height
 *        Sets frame.size.height = height
 */
@property (nonatomic) CGFloat ZXH_height;

/**
 * @brief Shortcut for center.x
 * Sets center.x = centerX
 */
@property (nonatomic) CGFloat ZXH_centerX;

/**
 * @brief Shortcut for center.y
 *        Sets center.y = centerY
 */
@property (nonatomic) CGFloat ZXH_centerY;

/**
 * @brief Shortcut for frame.origin
 */
@property (nonatomic) CGPoint ZXH_origin;

/**
 * @brief Shortcut for frame.size
 */
@property (nonatomic) CGSize ZXH_size;

/**
 *  Get/Set the control's corneradus
 *  Default is 0.0
 */
@property (nonatomic, assign) CGFloat ZXH_corneradus;

/**
 *  Get/Set the control's border color
 *  Default is [UIColor lightGrayColor]
 */
@property (nonatomic, strong) UIColor *ZXH_borderColor;

/**
 *  Get/Set the control's border width
 *  Default is 0.0
 */
@property (nonatomic, assign) CGFloat ZXH_borderWidth;

@end
