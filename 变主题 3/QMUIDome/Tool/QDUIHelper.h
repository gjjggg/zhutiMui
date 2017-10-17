//
//  QDUIHelper.h
//  QMUIDome
//
//  Created by 郭洪安 on 2017/10/17.
//  Copyright © 2017年 UIViewCon. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QDUIHelper : NSObject

@end
@interface QDUIHelper(UITabBarItem)
+ (UITabBarItem *)tabBarItemWithTitle:(NSString *)title image:(UIImage *)image selectedImage:(UIImage *)selectedImage tag:(NSInteger)tag;
@end
