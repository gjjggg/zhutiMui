//
//  AFAppDotNet.h
//  ShunLianPower
//
//  Created by 郭洪安 on 2016/12/5.
//  Copyright © 2016年 浙江顺联网络科技有限公司. All rights reserved.
//
#import <Foundation/Foundation.h>
#import "AFHTTPSessionManager.h"

@interface AFAppDotNet : AFHTTPSessionManager
+ (instancetype)sharedClient;
@end
