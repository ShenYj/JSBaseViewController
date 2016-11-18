//
//  ViewController.m
//  BaseViewController
//
//  Created by ShenYj on 2016/11/17.
//  Copyright © 2016年 ShenYj. All rights reserved.
//

#import "ViewController.h"
#import "JSNextDemoViewController.h"


@interface ViewController ()

@property (nonatomic,strong) UITextView *textView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.js_navigationItem.title = @"首页";
    self.js_navigationItem.leftBarButtonItem = [[JSBaseNavBarButtonItem alloc] initWithTitle:@"首页" withFont:16 withTarget:self withAction:@selector(clickLeftBarButtonItem:)];
    
    [self.view addSubview:self.textView];
    self.textView.translatesAutoresizingMaskIntoConstraints = NO;
    NSLayoutConstraint *left = [NSLayoutConstraint constraintWithItem:self.textView attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeLeft multiplier:1 constant:0];
    [self.view addConstraint:left];
    NSLayoutConstraint *top = [NSLayoutConstraint constraintWithItem:self.textView attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTop multiplier:1 constant:64];
    [self.view addConstraint:top];
    NSLayoutConstraint *right = [NSLayoutConstraint constraintWithItem:self.textView attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeRight multiplier:1 constant:0];
    [self.view addConstraint:right];
    NSLayoutConstraint *bottom = [NSLayoutConstraint constraintWithItem:self.textView attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeBottom multiplier:1 constant:0];
    [self.view addConstraint:bottom];
    
}

- (void)clickLeftBarButtonItem:(JSBaseNavBarButtonItem *)sender {
    
    JSNextDemoViewController *nextVC = [[JSNextDemoViewController alloc] init];
    [self.navigationController pushViewController:nextVC animated:YES];
}

- (void)clickRightBarButtonItem:(JSBaseNavBarButtonItem *)sender {
    NSLog(@"%s",__func__);
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark
#pragma mark - lazy
- (UITextView *)textView {
    
    if (!_textView) {
        _textView = [[UITextView alloc] init];
        _textView.font = [UIFont systemFontOfSize:15];
        _textView.textColor = [UIColor blackColor];
        _textView.alwaysBounceVertical = YES;
        _textView.alwaysBounceHorizontal = NO;
        _textView.textAlignment = NSTextAlignmentLeft;
        _textView.text = @"这里使用的是自定义的Navigationbar\n1.通过自定义NavigationController隐藏默认navigationbar属性\n2.在BaseViewController中自定义Navigationbar和NavigationItem属性,并添加至view中\n3.重写title的Setter方法,在方法内给自定义的navigationItem的title属性赋值\n4.在ViewController(演示控制器)中设置了左侧自定义buttonItem Push到一个新的DemoVC\n5.在DemoVC中设置了右侧自定义buttonItem Pop回上级控制器\n6.在自定义NavigationController中重写pushViewController:方法,再次获取到将要Push的下级控制器,并设置其左侧按钮Pop回上一级功能\n7.在pushViewController:方法中,同时对底部TabBar隐藏做处理\n";
    }
    return _textView;
}

@end
