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
#define IS_IPHONE_X_S (IS_IPHONE && SCREEN_MAX_LENGTH == 812.0)                                 // iPhone X / iPhone XS 375 * 812 scale = 3
#define IS_IPHONE_XR (IS_IPHONE && SCREEN_MAX_LENGTH == 896.0 && SCREEN_SCALE == 2)             // iPhone XR            414 * 896 scale = 2
#define IS_IPHONE_XS_MAX (IS_IPHONE && SCREEN_MAX_LENGTH == 896.0 && SCREEN_SCALE == 3)         // iPhone XS MAX        414 * 896 scale = 3
#define IS_IPHONE_PROFILED_FULL_SCREEN ((IS_IPHONE_X_S) || (IS_IPHONE_XR) || (IS_IPHONE_XS_MAX))// 异形全面屏iPhone
#define THEME_COLOUR [UIColor js_colorWithHex:0x080808]                                         // 主题色

@interface JSNavigationBar : UINavigationBar

@end
