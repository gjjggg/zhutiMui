//
//  AFAppDotNet.m
//  ShunLianPower
//
//  Created by 郭洪安 on 2016/12/5.
//  Copyright © 2016年 浙江顺联网络科技有限公司. All rights reserved.
//

#import "AFAppDotNet.h"

static NSString *SERVER_URL = @"https://api.shunliandongli.com/v1/";

@implementation AFAppDotNet
+ (instancetype)sharedClient {
    static AFAppDotNet *_sharedClient = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        
        
        
        
        _sharedClient =[[AFAppDotNet  alloc]initWithBaseURL:[NSURL URLWithString:SERVER_URL]];
        _sharedClient.securityPolicy = [AFSecurityPolicy policyWithPinningMode:AFSSLPinningModeNone];
        _sharedClient.requestSerializer = [AFJSONRequestSerializer serializer];
        _sharedClient.responseSerializer = [AFHTTPResponseSerializer serializer];
        
        
        
        _sharedClient.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/json", @"text/javascript", @"text/html",@"image/png", @"text/xml", nil];
        
        NSDictionary *infoDictionary = [[NSBundle mainBundle] infoDictionary];
        // app build系统版本
        NSString * systemVer=[[UIDevice currentDevice] systemVersion];
        // app build版本
        NSString *app_build = [infoDictionary objectForKey:@"CFBundleVersion"];
        NSString * userA=[NSString stringWithFormat:@"ShunLian iPhone %@/%@",systemVer,app_build];
        
        [_sharedClient.requestSerializer setValue:userA forHTTPHeaderField:@"User-Agent"];
        
        //生成一个uuid的方法
        NSString *uuid = @"15F9F1AC-84E6-444C-AC8A-D87445ACB035";
        [_sharedClient.requestSerializer setValue:uuid forHTTPHeaderField:@"X-Device-ID"];
        
        [_sharedClient.requestSerializer setValue:@"gzip, deflate" forHTTPHeaderField:@"Accept-Encoding"];
        
        NSString *IP = nil;
   
        NSString *s =@"750x1334";
        
        
        [_sharedClient.requestSerializer setValue:IP forHTTPHeaderField:@"X-Ip"];
        [_sharedClient.requestSerializer setValue:s forHTTPHeaderField:@"resolution"];
        
        
        
        
    });
    
    return _sharedClient;
}

@end
