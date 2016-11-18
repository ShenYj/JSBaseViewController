//
//  JSNextDemoViewController.m
//  BaseViewController
//
//  Created by ShenYj on 2016/11/18.
//  Copyright © 2016年 ShenYj. All rights reserved.
//

#import "JSNextDemoViewController.h"

@interface JSNextDemoViewController ()

@end

@implementation JSNextDemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.js_navigationItem.title = [NSString stringWithFormat:@"第%zd个子视图",self.navigationController.childViewControllers.count - 1];
    self.js_navigationItem.rightBarButtonItem = [[JSBaseNavBarButtonItem alloc] initWithTitle:@"下一个" withFont:16 withTarget:self withAction:@selector(clickRightBarButtonItem:)];
}

- (void)clickRightBarButtonItem:(JSBaseNavBarButtonItem *)sender {
    JSNextDemoViewController *nextVC = [[JSNextDemoViewController alloc] init];
    [self.navigationController pushViewController:nextVC animated:YES];
}



@end
