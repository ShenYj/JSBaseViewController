//
//  AppDelegate.m
//  BaseViewController
//
//  Created by ShenYj on 2016/11/17.
//  Copyright © 2016年 ShenYj. All rights reserved.
//

#import "AppDelegate.h"
#import "JSBaseNavigationController.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    if (IS_IPHONE_XR) {
        NSLog(@"XR");
    } else if (IS_IPHONE_X_S) {
        NSLog(@"X/XS");
    } else if (IS_IPHONE_XS_MAX) {
        NSLog(@"MAX");
    }
    UITabBarController *rootVC = [[UITabBarController alloc] init];
    JSBaseNavigationController *navigationController1 = [self loadNavigationControllerWithTitle:@"页面1"];
    JSBaseNavigationController *navigationController2 = [self loadNavigationControllerWithTitle:@"页面2"];
    JSBaseNavigationController *navigationController3 = [self loadNavigationControllerWithTitle:@"页面3"];
    JSBaseNavigationController *navigationController4 = [self loadNavigationControllerWithTitle:@"页面4"];
    
    rootVC.viewControllers = @[navigationController1,navigationController2,navigationController3,navigationController4];
    [UITabBar appearance].tintColor = [UIColor orangeColor];
    
    self.window.rootViewController = rootVC;
    
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (JSBaseNavigationController *)loadNavigationControllerWithTitle:(NSString *)title {
    ViewController *baseVC = [[ViewController alloc] init];
    JSBaseNavigationController *navigationController = [[JSBaseNavigationController alloc]initWithRootViewController:baseVC];
    navigationController.bottomBarHiddenWhenPushed = YES;
    baseVC.title = title;
    baseVC.tabBarItem.title = title;
    return navigationController;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
