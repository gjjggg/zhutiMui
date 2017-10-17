//
//  ShouYeHeaderVIew.h
//  QMUIDome
//
//  Created by 郭洪安 on 2017/2/16.
//  Copyright © 2017年 UIViewCon. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ShangchengTouTiao.h"
@interface ShouYeHeaderVIew : UIView<SDCycleScrollViewDelegate>
{
    float   scrollViewHeight;
}
@property (nonatomic,strong) NSMutableArray * newsList;
@property (nonatomic,strong) NSMutableArray * news;
@property (nonatomic,strong) NSMutableArray * banner;
@property (nonatomic,strong) NSMutableArray * bannerImageArr;
@property (nonatomic,strong) NSMutableArray * newcate;


@property SDCycleScrollView * sdCycleScrollView;
@property ShangchengTouTiao * touxiaoView;
@property (nonatomic,strong) QMUIButton *  qiuBTn;
-(void) createHeader;
@end
