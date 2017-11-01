//
//  JSBaseViewController.m
//  BaseViewController
//
//  Created by ShenYj on 2016/11/17.
//  Copyright © 2016年 ShenYj. All rights reserved.
//

#import "JSBaseViewController.h"
#import "JSBaseNavigationController.h"

static CGFloat const kNavigationBarHeight = 64.f;  /** 自定义导航条高度 */

@interface JSBaseViewController ()

@end

@implementation JSBaseViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // 设置视图
    [self setUpUI];
}

#pragma mark
#pragma mark - set up UI

/** 设置标题 */ 
- (void)setTitle:(NSString *)title
{
    [super setTitle:title];
    self.js_navigationItem.title = title;
}
/** 导航条视图 */
- (void)prepareCustomNavigationBar
{
    [self.view addSubview:self.js_NavigationBar];
    self.js_NavigationBar.items = @[self.js_navigationItem];
    self.js_NavigationBar.barTintColor = [UIColor colorWithRed:245 / 255.0 green:245 / 255.0 blue:245 / 255.0 alpha:1.0];
    [self.js_NavigationBar setTitleTextAttributes:@{
                                                    NSFontAttributeName: [UIFont systemFontOfSize:18],
                                                    NSForegroundColorAttributeName: [UIColor orangeColor]}
     ];
}

/** 设置UI */
- (void)setUpUI
{
    [self prepareCustomNavigationBar];
    [self prepareView];
}
/** 主视图 */
- (void)prepareView
{
    // 设置基类视图背景色
    self.view.backgroundColor = [UIColor whiteColor];
    // 取消穿透
    self.automaticallyAdjustsScrollViewInsets = NO;
}

#pragma mark 
#pragma mark - lazy

- (JSNavigationBar *)js_NavigationBar {
    
    if (!_js_NavigationBar) {
        _js_NavigationBar = [[JSNavigationBar alloc] initWithFrame:CGRectMake(0,  0, [UIScreen mainScreen].bounds.size.width, kNavigationBarHeight)];
    }
    return _js_NavigationBar;
}

- (UINavigationItem *)js_navigationItem {
    
    if (!_js_navigationItem) {
        _js_navigationItem = [[UINavigationItem alloc] init];
    }
    return _js_navigationItem;
}


@end
