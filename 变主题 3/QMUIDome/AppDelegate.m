//
//  AppDelegate.m
//  QMUIDome
//
//  Created by 郭洪安 on 2017/2/15.
//  Copyright © 2017年 UIViewCon. All rights reserved.


#import "AppDelegate.h"
#import "ViewController.h"
#import "ShouYeViewController.h"
#import "FenLeiViewController.h"
#import "CarViewController.h"
#import "WoDeViewController.h"
#import "QDNavigationController.h"
#import "QDTabBarViewController.h"

@interface AppDelegate ()
{

    QDTabBarViewController *  tabBarViewController;
    QDNavigationController *  shouyeNav;
    QDNavigationController *  fenleiNav;
    QDNavigationController *  gouwucheNav;
    QDNavigationController *  wodeNav;
}
@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    [self createTabBarController];
    [self create];
    
    //启动QMUI的配置模板
    [QMUIConfigurationTemplate setupConfigurationTemplate];
     //将全局的控件样式渲染出来
    [QMUIConfigurationManager renderGlobalAppearances];
    
    
    
    return YES;
}
-(void)createTabBarController{
    tabBarViewController = [[QDTabBarViewController alloc]init];
    
    ShouYeViewController * shouye = [[ShouYeViewController alloc]init];
    shouye.hidesBottomBarWhenPushed = NO;
    shouyeNav = [[QDNavigationController alloc]initWithRootViewController:shouye];
 
    
    FenLeiViewController * fenlei = [[FenLeiViewController alloc]init];
    fenlei.hidesBottomBarWhenPushed = NO;
    fenleiNav = [[QDNavigationController alloc]initWithRootViewController:fenlei];
   
    
    CarViewController * gouwuche = [[CarViewController alloc]init];
    gouwuche.hidesBottomBarWhenPushed = NO;
    gouwucheNav = [[QDNavigationController alloc]initWithRootViewController:gouwuche];

    
    
    WoDeViewController * wode = [[WoDeViewController alloc]init];
    wode.hidesBottomBarWhenPushed = NO;
    wodeNav = [[QDNavigationController alloc]initWithRootViewController:wode];

    
    tabBarViewController.viewControllers = @[shouyeNav,fenleiNav,gouwucheNav,wodeNav];
     self.window.rootViewController = tabBarViewController;
     [self.window makeKeyAndVisible];
}
-(void)create{
       shouyeNav.tabBarItem  = [QDUIHelper tabBarItemWithTitle:@"首页" image:[UIImageMake(@"tab_1_n") imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] selectedImage:[UIImageMake(@"tab_1_h") imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] tag:0];
    
       fenleiNav.tabBarItem  = [QDUIHelper tabBarItemWithTitle:@"分类" image:[UIImageMake(@"tab_2_n") imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] selectedImage:[UIImageMake(@"tab_2_h") imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] tag:1];
    
        gouwucheNav.tabBarItem  = [QDUIHelper tabBarItemWithTitle:@"购物车" image:[UIImageMake(@"tab_3_n") imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] selectedImage:[UIImageMake(@"tab_3_h") imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] tag:2];
    
        wodeNav.tabBarItem  = [QDUIHelper tabBarItemWithTitle:@"我的" image:[UIImageMake(@"tab_4_n") imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] selectedImage:[UIImageMake(@"tab_4_h") imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] tag:3];
    
}
- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
