//
//  ShangchengTouTiao.h
//  QMUIDome
//
//  Created by 郭洪安 on 2017/2/16.
//  Copyright © 2017年 UIViewCon. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ShangchengTouTiao : UIView<SDCycleScrollViewDelegate>
@property (nonatomic,strong) NSMutableArray * news;
@property (nonatomic,strong) NSMutableArray *  newsArray;
@property SDCycleScrollView  * titleView;
-(void)createTouTiaoNewsArry:(NSMutableArray *)newsArray;
@end
