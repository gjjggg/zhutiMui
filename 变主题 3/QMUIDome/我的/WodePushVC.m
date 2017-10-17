//
//  WodePushVC.m
//  QMUIDome
//
//  Created by 郭洪安 on 2017/2/16.
//  Copyright © 2017年 UIViewCon. All rights reserved.
//

#import "WodePushVC.h"

@interface WodePushVC ()

@end

@implementation WodePushVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor =[UIColor yellowColor];
}

- (void)setNavigationItemsIsInEditMode:(BOOL)isInEditMode animated:(BOOL)animated {
    [super setNavigationItemsIsInEditMode:isInEditMode animated:animated];
    self.title = @"Lab";
    self.navigationItem.rightBarButtonItem = [QMUINavigationButton barButtonItemWithImage:UIImageMake(@"back_h") position:QMUINavigationButtonPositionRight target:self action:@selector(handleAboutItemEvent)];
    
    [super setNavigationItemsIsInEditMode:isInEditMode animated:animated];
    self.title = @"Lab";
    self.navigationItem.leftBarButtonItem = [QMUINavigationButton barButtonItemWithImage:UIImageMake(@"back_h") position:QMUINavigationButtonPositionRight target:self action:@selector(handleAboutItem)];
   
}
-(void)handleAboutItem{
    [self.navigationController popViewControllerAnimated:YES];


}
-(void)handleAboutItemEvent{
    
    [[NSNotificationCenter defaultCenter] postNotificationName:SHEN_FEN_TONG object:@[@"All System Fonts",
                                                                                      @"Default Line Height",
                                                                                      @"Animation",
                                                                                      @"Animation"
                                                                                      ]];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
