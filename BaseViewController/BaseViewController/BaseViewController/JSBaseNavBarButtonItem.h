//
//  JSBaseNavBarButtonItem.h
//  BaseViewController
//
//  Created by ShenYj on 2016/11/18.
//  Copyright © 2016年 ShenYj. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JSBaseNavBarButtonItem : UIBarButtonItem

/** 自定义构造函数 */
- (instancetype)initWithTitle:(NSString *)title
                     withFont:(CGFloat)font
                   withTarget:(id)target
                   withAction:(SEL)action;

- (instancetype)initWithTitle:(NSString *)title
                     withFont:(CGFloat)font
              withNormalColor:(UIColor *)normalColor
         withHighlightedColor:(UIColor *)highlightedColor
                   withTarget:(id)target
                   withAction:(SEL)action;

- (instancetype)initWithTitle:(NSString *)title
                     withFont:(CGFloat)font
              withNormalColor:(UIColor *)normalColor
         withHighlightedColor:(UIColor *)highlightedColor
                   withTarget:(id)target withAction:(SEL)action
                       isBack:(BOOL)isBack
            withBackImageName:(NSString *)backImageName;

/** 图片导航按钮
 * normalImgName & highlightedImgName 必须同时有值
 */
- (instancetype)initWithNormalImgName: (NSString *)normalImgName
               withHighlightedImgName: (NSString *)highlightedImgName
                           withTarget:(id)target
                           withAction:(SEL)action;


@end
