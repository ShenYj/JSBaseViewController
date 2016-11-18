//
//  JSBaseViewController.m
//  BaseViewController
//
//  Created by ShenYj on 2016/11/17.
//  Copyright © 2016年 ShenYj. All rights reserved.
//

#import "JSBaseViewController.h"


static CGFloat const kNavigationBarHeight = 64.f;  /** 自定义导航条高度 */

@interface JSBaseViewController ()

//@property (nonatomic,strong) UIBarButtonItem *js_LeftBarButtonItem;
//@property (nonatomic,strong) UIBarButtonItem *js_RightBarButtonItem;

@end

@implementation JSBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setUpUI];
}

- (void)setTitle:(NSString *)title {
    [super setTitle:title];
    self.js_navigationItem.title = title;
}

- (void)setUpUI {
    [self prepareCustomNavigationBar];
    [self prepareView];
    
}

- (void)prepareView {
    
    self.view.backgroundColor = [UIColor whiteColor];
}

/** 自定义导航条视图 */
- (void)prepareCustomNavigationBar {
    
    [self.view addSubview:self.js_NavigationBar];
    self.js_NavigationBar.items = @[self.js_navigationItem];
    [self.js_NavigationBar setTitleTextAttributes:@{NSFontAttributeName: [UIFont systemFontOfSize:18],NSForegroundColorAttributeName: [UIColor whiteColor]}];
    
}




#pragma mark 
#pragma mark - lazy

- (UINavigationBar *)js_NavigationBar {
    
    if (!_js_NavigationBar) {
        _js_NavigationBar = [[UINavigationBar alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, kNavigationBarHeight)];
        _js_NavigationBar.barTintColor = [UIColor orangeColor];
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