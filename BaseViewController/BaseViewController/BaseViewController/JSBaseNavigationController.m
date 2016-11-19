//
//  JSNavigationController.m
//  BaseViewController
//
//  Created by ShenYj on 2016/11/17.
//  Copyright © 2016年 ShenYj. All rights reserved.
//

#import "JSBaseNavigationController.h"
#import "JSBaseViewController.h"

@interface JSBaseNavigationController ()

@end

@implementation JSBaseNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // 隐藏默认的导航条
    self.navigationBar.hidden = YES;
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    
    if (self.childViewControllers.count > 0) {
        
        // 设置全局隐藏底部TabBar
        if (self.bottomBarHiddenWhenPushed) {
            viewController.hidesBottomBarWhenPushed = YES;
        }
        
        // 设置返回按钮
        if ([viewController isKindOfClass:[JSBaseViewController class]]) {
            JSBaseViewController *nextVC = (JSBaseViewController *)viewController;
            NSString *title = @"返回";
            if (self.childViewControllers.count == 1) {
                JSBaseViewController *parentVC = self.childViewControllers.firstObject;
                title = parentVC.js_navigationItem.title;
            }
            nextVC.js_navigationItem.leftBarButtonItem = [[JSBaseNavBarButtonItem alloc] initWithTitle:title withFont:16 withNormalColor:nil withHighlightedColor:nil withTarget:self withAction:@selector(goBackToParentController:)isBack:YES withBackImageName:@"v2_goback"];
            
        }
    
    }
    
    [super pushViewController:viewController animated:animated];
}

- (void)goBackToParentController:(JSBaseNavBarButtonItem *)sender {
    [self popViewControllerAnimated:YES];
}



@end
