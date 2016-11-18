//
//  JSNavigationController.m
//  BaseViewController
//
//  Created by ShenYj on 2016/11/17.
//  Copyright © 2016年 ShenYj. All rights reserved.
//

#import "JSNavigationController.h"

@interface JSNavigationController ()

@end

@implementation JSNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // 隐藏默认的导航条
    self.navigationBar.hidden = YES;
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    
    // 设置返回按钮
    
    
    // 设置全局隐藏底部TabBar
    if (self.bottomBarHiddenWhenPushed) {
        
        if (self.childViewControllers.count > 0) {
            viewController.hidesBottomBarWhenPushed = YES;
        }
    }
    
    [super pushViewController:viewController animated:animated];
}



@end
