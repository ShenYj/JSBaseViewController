//
//  JSNavigationBar.m
//  BaseViewController
//
//  Created by ShenYj on 2017/11/1.
//  Copyright © 2017年 ShenYj. All rights reserved.
//

#import "JSNavigationBar.h"

@implementation JSNavigationBar

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor colorWithRed:245 / 255.0 green:245 / 255.0 blue:245 / 255.0 alpha:1.0];
    }
    return self;
}

- (void)setBarTintColor:(UIColor *)barTintColor {
    [super setBarTintColor:barTintColor];
    self.backgroundColor = barTintColor;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    CGFloat systemVersion = [UIDevice currentDevice].systemVersion.floatValue;
    for (UIView *view in self.subviews) {
        CGFloat statusBarHeight = [[UIApplication sharedApplication] statusBarFrame].size.height;
        
        if (systemVersion >= 11.0) {
            if ([view isKindOfClass:NSClassFromString(@"_UIBarBackground")]) {
                NSLog(@"_UIBarBackground");
                CGRect frame = view.frame;
                frame.origin.y = statusBarHeight;
                view.frame = frame;
                NSLog(@"修改后的Frame: %@",NSStringFromCGRect(view.frame));
            }
            if ([view isKindOfClass:NSClassFromString(@"_UINavigationBarContentView")]) {
                NSLog(@"_UINavigationBarContentView");
                CGRect frame = view.frame;
                frame.origin.y = statusBarHeight;
                view.frame = frame;
            }
        }
    }
}

@end
