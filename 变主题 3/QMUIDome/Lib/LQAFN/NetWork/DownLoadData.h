//
//  DownLoadData.h
//  007AFN的使用
//
//  Created by 黎跃春 on 15/5/18.
//  Copyright (c) 2015年 黎跃春. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DownLoadData : NSObject




//gengxin
+(NSURLSessionDataTask *) gentxin:(void (^) (id obj, NSError *err))block  withuserId:(NSString *)Id;
+(NSURLSessionDataTask *) set:(void (^) (id obj, NSError *err))block  withuserId:(NSString *)Id;

@end















