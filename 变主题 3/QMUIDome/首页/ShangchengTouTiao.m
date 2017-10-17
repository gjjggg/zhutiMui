//
//  ShangchengTouTiao.m
//  QMUIDome
//
//  Created by 郭洪安 on 2017/2/16.
//  Copyright © 2017年 UIViewCon. All rights reserved.
//

#import "ShangchengTouTiao.h"

@implementation ShangchengTouTiao

-(void)createTouTiaoNewsArry:(NSMutableArray *)newsArray{
    UILabel *leftLabel = [[UILabel alloc]initWithFrame:CGRectMake(2, 0, 40, 30)];
    leftLabel.text = @"商城头条:";
    leftLabel.font = [UIFont boldSystemFontOfSize:17];
    
    UIImageView *tongImg = [[UIImageView alloc]initWithFrame:CGRectMake(MaxX(leftLabel), 2.5, 25, 25)];
    tongImg.image = [UIImage imageNamed:@"voice"];
    
    // 网络加载 --- 创建只上下滚动展示文字的轮播器
    // 由于模拟器的渲染问题，如果发现轮播时有一条线不必处理，模拟器放大到100%或者真机调试是不会出现那条线的
    _titleView = [SDCycleScrollView cycleScrollViewWithFrame:CGRectMake(MaxX(tongImg), 0, SCREEN_WIDTH-MaxX(tongImg),30) delegate:self placeholderImage:nil];
    _titleView.scrollDirection = UICollectionViewScrollDirectionVertical;
    _titleView.onlyDisplayText = YES;
    
    NSMutableArray *titlesArray = [NSMutableArray new];
    
//    if (_news.count == 0) {
//        [titlesArray addObject:@"没有公告"];
//    }else{
//        for (int i=0; i<_news.count; i++) {
//            [titlesArray addObject:_news[i][@"title"]];
//        }
//    }
    _titleView.titlesGroup = newsArray;
    _titleView.titleLabelTextColor = [UIColor blackColor];
    _titleView.titleLabelBackgroundColor = [UIColor whiteColor];
    _titleView.autoScrollTimeInterval = 4;
    [self addSubview:leftLabel];
    [self addSubview:tongImg];
    [self addSubview:_titleView];

}
@end
