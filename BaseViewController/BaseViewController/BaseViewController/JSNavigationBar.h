//
//  JSNavigationBar.h
//  BaseViewController
//
//  Created by ShenYj on 2017/11/1.
//  Copyright © 2017年 ShenYj. All rights reserved.
//

#import <UIKit/UIKit.h>
#define SCREEN_WIDTH ([[UIScreen mainScreen] bounds].size.width)                                //  屏幕宽度
#define SCREEN_HEIGHT ([[UIScreen mainScreen] bounds].size.height)                              //  屏幕高度
#define SCREEN_MAX_LENGTH (MAX(SCREEN_WIDTH, SCREEN_HEIGHT))
#define IS_IPHONE (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone)
#define SCREEN_SCALE ([UIScreen mainScreen].scale)
#define THEME_COLOUR [UIColor js_colorWithHex:0x080808]                                         // 主题色

@interface JSNavigationBar : UINavigationBar

@end
