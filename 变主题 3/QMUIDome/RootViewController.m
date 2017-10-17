//
///
//  RootViewController.m
//  Chan
//
//  Created by MS on 15-9-16.
//  Copyright (c) 2015年 MS. All rights reserved.
//

#import "RootViewController.h"
#import "ShouYeViewController.h"
#import "FenLeiViewController.h"
#import "CarViewController.h"
#import "WoDeViewController.h"
#import "RDVTabBarItem.h"
@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setViewControllers];
    
    
}

- (void)setViewControllers {
    
    
    
    ShouYeViewController *traveVC = [[ShouYeViewController alloc] init];
    UINavigationController *traveNav = [[UINavigationController alloc] initWithRootViewController:traveVC];
    
    
    FenLeiViewController *tacticVC = [[FenLeiViewController alloc] init];
    UINavigationController *tacticNav = [[UINavigationController alloc] initWithRootViewController:tacticVC];
    
    
    
    CarViewController *toolVc = [[CarViewController alloc] init];
    UINavigationController *toolNav = [[UINavigationController alloc] initWithRootViewController:toolVc];
    
    WoDeViewController *two = [[WoDeViewController alloc] init];
    UINavigationController *twoNav = [[UINavigationController alloc] initWithRootViewController:two];
    
    [self setViewControllers:@[traveNav,tacticNav,toolNav,twoNav]];
     [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(shenFenQieHuan:) name:SHEN_FEN_TONG object:nil];
    [self customizeTabBarForController:self withArr:@[@"首页",@"分类",@"购物车",@"我的"]];
    
}

-(void)shenFenQieHuan:(NSNotification *)not
{
    
    [[self rdv_tabBarItem] setBadgeValue:[NSString stringWithFormat:@"%ld",1]];
        [self customizeTabBarForController:self withArr:@[@"首",@"分",@"购物",@"我"]];
    
    [[self rdv_tabBarItem] setBadgeValue:[NSString stringWithFormat:@"%ld",1]];
}

- (void)customizeTabBarForController:(RDVTabBarController *)tabBarController withArr:(NSArray *)arr   {
    UIImage *finishedImage = [UIImage imageNamed:@"tabbar_selected_background"];
    UIImage *unfinishedImage = [UIImage imageNamed:@"tabbar_normal_background"];
    //    NSArray *tabBarItemImages = @[@"tabbar_limitfree", @"tabbar_reduceprice", @"tabbar_appfree",@"tabbar_subject",@"tabbar_rank"];
    
    NSArray *titles = arr;
    
    NSInteger index = 0;
    
    NSDictionary *textAttributes_normal = nil;
    NSDictionary *textAttributes_selected = nil;
    
    if (NSFoundationVersionNumber > NSFoundationVersionNumber_iOS_6_1) {
        textAttributes_normal = @{
                                  NSFontAttributeName: [UIFont systemFontOfSize:12],
                                  NSForegroundColorAttributeName: [UIColor colorWithRed:65/255.0 green:65/255.0 blue:65/255.0 alpha:1.0],
                                  };
        textAttributes_selected = @{
                                    NSFontAttributeName: [UIFont systemFontOfSize:12],
                                    NSForegroundColorAttributeName: [UIColor colorWithRed:128/255.0 green:234/255.0 blue:244/255.0 alpha:1.0],
                                    };
    }
    
    
    for (RDVTabBarItem *item in [[tabBarController tabBar] items]) {
        
        
        item.unselectedTitleAttributes = textAttributes_normal;
        item.selectedTitleAttributes = textAttributes_selected;
        
        
        [item setBackgroundSelectedImage:finishedImage withUnselectedImage:unfinishedImage];
        //        UIImage *selectedimage = [UIImage imageNamed:[NSString stringWithFormat:@"%@_press",
        //                                                      [tabBarItemImages objectAtIndex:index]]];
        //        UIImage *unselectedimage = [UIImage imageNamed:[NSString stringWithFormat:@"%@",
        //                                                        [tabBarItemImages objectAtIndex:index]]];
        // [item setFinishedSelectedImage:selectedimage withFinishedUnselectedImage:unselectedimage];
        
        item.title = titles[index];
        [item setTitle:titles[index]];
        index++;
        
        
        
    }
}
/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end

