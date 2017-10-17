//
//  WoDeViewController.m
//  QMUIDome
//
//  Created by 郭洪安 on 2017/2/15.
//  Copyright © 2017年 UIViewCon. All rights reserved.
//

#import "WoDeViewController.h"
#import "WodePushVC.h"
@interface WoDeViewController ()

@end

@implementation WoDeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (void)setNavigationItemsIsInEditMode:(BOOL)isInEditMode animated:(BOOL)animated {
    [super setNavigationItemsIsInEditMode:isInEditMode animated:animated];
    self.title = @"Lab";
    self.navigationItem.rightBarButtonItem = [QMUINavigationButton barButtonItemWithImage:UIImageMake(@"back_h") position:QMUINavigationButtonPositionRight target:self action:@selector(handleAboutItemEvent)];
}
-(void)handleAboutItemEvent{
    
    WodePushVC * wo = [[WodePushVC alloc]init];
    [self.navigationController pushViewController:wo animated:YES];
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
