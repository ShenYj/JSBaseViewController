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
#define IS_IPHONE_X (IS_IPHONE && SCREEN_MAX_LENGTH == 812.0)                                   // iPhone X

@interface JSNavigationBar : UINavigationBar

@end
