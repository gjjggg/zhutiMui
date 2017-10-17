//
//  QDUIHelper.m
//  QMUIDome
//
//  Created by 郭洪安 on 2017/10/17.
//  Copyright © 2017年 UIViewCon. All rights reserved.
//

#import "QDUIHelper.h"

@implementation QDUIHelper

@end

@implementation QDUIHelper (UITabBarItem)

+ (UITabBarItem *)tabBarItemWithTitle:(NSString *)title image:(UIImage *)image selectedImage:(UIImage *)selectedImage tag:(NSInteger)tag {
    UITabBarItem *tabBarItem = [[UITabBarItem alloc] initWithTitle:title image:image tag:tag];
    tabBarItem.selectedImage = selectedImage;
    return tabBarItem;
    
}

@end
