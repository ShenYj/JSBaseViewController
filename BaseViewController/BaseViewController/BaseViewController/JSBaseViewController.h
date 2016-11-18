//
//  JSBaseViewController.h
//  BaseViewController
//
//  Created by ShenYj on 2016/11/17.
//  Copyright © 2016年 ShenYj. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JSBaseNavBarButtonItem.h"

@interface JSBaseViewController : UIViewController


/** 自定义导航条 */
@property (nonatomic,strong) UINavigationBar *js_NavigationBar;
/** 自定义导航条Item */
@property (nonatomic,strong) UINavigationItem *js_navigationItem;




@end
