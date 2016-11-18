//
//  JSBaseNavBarButtonItem.m
//  BaseViewController
//
//  Created by ShenYj on 2016/11/18.
//  Copyright © 2016年 ShenYj. All rights reserved.
//

#import "JSBaseNavBarButtonItem.h"

@implementation JSBaseNavBarButtonItem


- (instancetype)initWithTitle:(NSString *)title withFont:(CGFloat)font withTarget:(id)target withAction:(SEL)action {
    return [self initWithTitle:title withFont:font withNormalColor:nil withHighlightedColor:nil withTarget:target withAction:action];
}

/** 自定义构造函数 */
- (instancetype)initWithTitle:(NSString *)title withFont:(CGFloat)font withNormalColor:(UIColor *)normalColor withHighlightedColor:(UIColor *)highlightedColor withTarget:(id)target withAction:(SEL)action {
    
    UIButton *button = [[UIButton alloc] init];
    
    button.titleLabel.font = [UIFont systemFontOfSize:font];
    if (title) {
        [button setTitle:title forState:UIControlStateNormal];
        [button setTitle:title forState:UIControlStateHighlighted];
    }
    if ( target && action ) {
        [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    }
    [button sizeToFit];
    
    normalColor ? ([button setTitleColor:normalColor forState:UIControlStateNormal]): ([button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal]);
    highlightedColor ? ([button setTitleColor:highlightedColor forState:UIControlStateHighlighted]) : ([button setTitleColor:[UIColor grayColor] forState:UIControlStateHighlighted]);
    
    JSBaseNavBarButtonItem *barButtonItem = [[JSBaseNavBarButtonItem alloc] initWithCustomView:button];
    
    return barButtonItem;
}


@end
