 //
//  DownLoadData.m
//  007AFN的使用
//
//  Created by 黎跃春 on 15/5/18.
//  Copyright (c) 2015年 黎跃春. All rights reserved.
//

#import "DownLoadData.h"
#import "AFAppDotNetAPIClient.h"
#import "AFAppDotNet.h"
@implementation DownLoadData
+(NSURLSessionDataTask *) gentxin:(void (^) (id obj, NSError *err))block  withuserId:(NSString *)Id
{


    
    
    return [[AFAppDotNetAPIClient sharedClient]GET:Id parameters:nil success:^(NSURLSessionDataTask *task, id responseObject) {
        NSString  *responseString = [[NSString alloc] initWithData:responseObject encoding:NSUTF8StringEncoding];
        NSString * str1= [responseString stringByReplacingOccurrencesOfString:@"\n" withString:@""];
        NSString * str2 = [str1 stringByReplacingOccurrencesOfString:@"\t" withString:@""];
        NSString * str3 = [str2 stringByReplacingOccurrencesOfString:@"\n\t" withString:@""];
        NSString * str4 = [str3 stringByReplacingOccurrencesOfString:@"\r" withString:@""];
        NSData * data = [str4 dataUsingEncoding:NSUTF8StringEncoding];
        id jso = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
        NSDictionary * dic;
        if (jso == nil) {
            // Error. You should probably have passed an NSError ** as the error
            // argument so you could log it.
        } else if ([jso isKindOfClass:[NSArray class]]) {
            dic=jso[0];
            // process array elements
        } else if ([jso isKindOfClass:[NSDictionary class]]) {
            dic=jso;
            // process dictionary elements
        }
        
        
        
        if (block) {
            block(dic,nil);
        }
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
            if (block) {
            block(nil,error);
        }
        
    }];
    



}


+(NSURLSessionDataTask *) set:(void (^) (id obj, NSError *err))block  withuserId:(NSString *)Id{

    
    return [[AFAppDotNet sharedClient]GET:Id parameters:nil success:^(NSURLSessionDataTask *task, id responseObject) {
        NSString  *responseString = [[NSString alloc] initWithData:responseObject encoding:NSUTF8StringEncoding];
        NSString * str1= [responseString stringByReplacingOccurrencesOfString:@"\n" withString:@""];
        NSString * str2 = [str1 stringByReplacingOccurrencesOfString:@"\t" withString:@""];
        NSString * str3 = [str2 stringByReplacingOccurrencesOfString:@"\n\t" withString:@""];
        NSString * str4 = [str3 stringByReplacingOccurrencesOfString:@"\r" withString:@""];
        NSData * data = [str4 dataUsingEncoding:NSUTF8StringEncoding];
        NSDictionary *jso = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
        
        
        if (block) {
            block(jso,nil);
        }
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
              if (block) {
            block(nil,error);
        }
        
    }];
    



}

@end









