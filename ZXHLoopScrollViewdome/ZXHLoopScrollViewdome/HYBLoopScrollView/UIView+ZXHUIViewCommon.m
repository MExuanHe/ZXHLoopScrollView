//
//  UIView+ZXHUIViewCommon.m
//  ZXHLoopScrollView
//
//  Created by huangyibiao on 15/9/2.
//  Copyright © 2015年 . All rights reserved.
//

#import "UIView+ZXHUIViewCommon.h"

@implementation UIView (ZXHUIViewCommon)

- (void)setZXH_origin:(CGPoint)ZXH_origin {
  CGRect frame = self.frame;
  frame.origin = ZXH_origin;
  self.frame = frame;
}

- (CGPoint)ZXH_origin {
  return self.frame.origin;
}

- (void)setZXH_originX:(CGFloat)ZXH_originX {
  self.ZXH_origin = CGPointMake(ZXH_originX, self.ZXH_originY);
}

- (CGFloat)ZXH_originX {
  return self.ZXH_origin.x;
}

- (void)setZXH_originY:(CGFloat)ZXH_originY {
  self.ZXH_origin = CGPointMake(self.ZXH_originX, ZXH_originY);
}

- (CGFloat)ZXH_originY {
  return self.ZXH_origin.y;
}

- (void)setZXH_rightX:(CGFloat)ZXH_rightX {
  CGRect frame = self.frame;
  frame.origin.x = ZXH_rightX - frame.size.width;
  self.frame = frame;
}

- (CGFloat)ZXH_rightX {
  return self.ZXH_width + self.ZXH_originX;
}

- (void)setZXH_width:(CGFloat)ZXH_width {
  CGRect frame = self.frame;
  frame.size.width = ZXH_width;
  self.frame = frame;
}

- (CGFloat)ZXH_width {
  return self.frame.size.width;
}

- (void)setZXH_size:(CGSize)ZXH_size {
  CGRect frame = self.frame;
  frame.size = ZXH_size;
  self.frame = frame;
}

- (CGSize)ZXH_size {
  return self.frame.size;
}

- (void)setZXH_height:(CGFloat)ZXH_height {
  CGRect frame = self.frame;
  frame.size.height = ZXH_height;
  self.frame = frame;
}

- (CGFloat)ZXH_height {
  return self.frame.size.height;
}

- (void)setZXH_bottomY:(CGFloat)ZXH_bottomY {
  CGRect frame = self.frame;
  frame.origin.y = ZXH_bottomY - frame.size.height;
  self.frame = frame;
}

- (CGFloat)ZXH_bottomY {
  return self.frame.size.height + self.frame.origin.y;
}

- (void)setZXH_centerX:(CGFloat)ZXH_centerX {
  self.center = CGPointMake(ZXH_centerX, self.center.y);
}

- (CGFloat)ZXH_centerX {
  return self.center.x;
}

- (void)setZXH_centerY:(CGFloat)ZXH_centerY {
  self.center = CGPointMake(self.center.x, ZXH_centerY);
}

- (CGFloat)ZXH_centerY {
  return self.center.y;
}

- (void)setZXH_corneradus:(CGFloat)ZXH_corneradus {
  self.layer.cornerRadius = ZXH_corneradus;
}

- (CGFloat)ZXH_corneradus {
  return self.layer.cornerRadius;
}

- (void)setZXH_borderColor:(UIColor *)ZXH_borderColor {
  self.layer.borderColor = ZXH_borderColor.CGColor;
}

- (UIColor *)ZXH_borderColor {
  return [UIColor colorWithCGColor:self.layer.borderColor];
}

- (void)setZXH_borderWidth:(CGFloat)ZXH_borderWidth {
  self.layer.borderWidth = ZXH_borderWidth;
}

- (CGFloat)ZXH_borderWidth {
  return self.layer.borderWidth;
}

@end
