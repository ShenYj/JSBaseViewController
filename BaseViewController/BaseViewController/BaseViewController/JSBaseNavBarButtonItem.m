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

- (instancetype)initWithTitle:(NSString *)title withFont:(CGFloat)font withNormalColor:(UIColor *)normalColor withHighlightedColor:(UIColor *)highlightedColor withTarget:(id)target withAction:(SEL)action {
    
    return [self initWithTitle:title withFont:font withNormalColor:normalColor withHighlightedColor:highlightedColor withTarget:target withAction:action isBack:NO withBackImageName:nil];
}

- (instancetype)initWithTitle:(NSString *)title withFont:(CGFloat)font withNormalColor:(UIColor *)normalColor withHighlightedColor:(UIColor *)highlightedColor withTarget:(id)target withAction:(SEL)action isBack:(BOOL)isBack withBackImageName:(NSString *)backImageName {
    
    UIButton *button = [[UIButton alloc] init];
    
    button.titleLabel.font = [UIFont systemFontOfSize:font];
    if (title) {
        [button setTitle:title forState:UIControlStateNormal];
        [button setTitle:title forState:UIControlStateHighlighted];
    }
    if ( target && action ) {
        [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    }
    
    normalColor ? ([button setTitleColor:normalColor forState:UIControlStateNormal]): ([button setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal]);
    highlightedColor ? ([button setTitleColor:highlightedColor forState:UIControlStateHighlighted]) : ([button setTitleColor:[UIColor grayColor] forState:UIControlStateHighlighted]);
    
    if (isBack && backImageName) {
        // 是返回按钮 (使用原图样式,不做渲染)
        [button setImage:[[UIImage imageNamed:backImageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
        [button setImage:[[UIImage imageNamed:[NSString stringWithFormat:@"%@_highlighted",backImageName]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]  forState:UIControlStateHighlighted];
    }
    [button sizeToFit];
    JSBaseNavBarButtonItem *barButtonItem = [[JSBaseNavBarButtonItem alloc] initWithCustomView:button];
    return barButtonItem;

}


@end
