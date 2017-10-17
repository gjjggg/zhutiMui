
//
//  ShouYeHeaderVIew.m
//  QMUIDome
//
//  Created by 郭洪安 on 2017/2/16.
//  Copyright © 2017年 UIViewCon. All rights reserved.
//

#import "ShouYeHeaderVIew.h"

/** 轮播图 */

@implementation ShouYeHeaderVIew

-(void) createHeader{
    
    if (SCREEN_HEIGHT==480) {
        scrollViewHeight=SCREEN_HEIGHT*0.2125;
    }
    else  {
        scrollViewHeight=SCREEN_HEIGHT*0.179;
    }
    
    _sdCycleScrollView = [SDCycleScrollView cycleScrollViewWithFrame:CGRectMake(0, 0, SCREEN_WIDTH,scrollViewHeight) delegate:self placeholderImage:nil];
    
    _sdCycleScrollView.imageURLStringsGroup =_bannerImageArr;
    _sdCycleScrollView.pageControlStyle = SDCycleScrollViewPageContolStyleClassic;
    [self addSubview:_sdCycleScrollView];

    self.frame = CGRectMake(0, 0, SCREEN_WIDTH, scrollViewHeight);


}
-(void) createQiuBtn{
    CGFloat btnWidth  = SCREEN_WIDTH*0.117;
    CGFloat btnHeight = SCREEN_WIDTH*0.117+25;
    UIButton *   button;
    
    CGFloat margin=(SCREEN_WIDTH-5*btnWidth)/6;
    
    
    for (int i = 0; i <_newcate.count; i++) {
        int row = i %5;
        int loc = i/5;
        CGFloat appviewx=margin+(margin+btnWidth)*row;
        CGFloat appviewy=10+(10+btnHeight)*loc;
        
        UIView * view=[[UIView alloc]initWithFrame:CGRectMake(appviewx, appviewy+ scrollViewHeight+5,btnWidth,btnHeight)];
        //view.backgroundColor=[UIColor redColor];
        [self addSubview:view];
        
        
        
        button = [UIButton buttonWithType:(UIButtonTypeCustom)];
        button.frame = CGRectMake(0, 0, btnWidth, btnWidth);
        button.highlighted = NO;
        button.tag = i;
        //            if(i+1==_category.count){
        //
        //                [button setImage:[UIImage imageNamed:@"aaa.png"] forState:(UIControlStateNormal) ];
        //            }
        //            else{
      
        [button setImageWithURL:[NSURL URLWithString:_newcate[i][@"icon"]] forState:(UIControlStateNormal) placeholder:[UIImage imageNamed:@"group_placeholder"]];
        //}
        [button addTarget:self action:@selector(pressBtn:) forControlEvents:(UIControlEventTouchUpInside)];
        [view addSubview:button];
        
        UILabel * textLabel=[[UILabel alloc]initWithFrame:CGRectMake(0, btnWidth,btnWidth , 25)];
        textLabel.text=_newcate[i][@"name"];
        textLabel.font=[UIFont systemFontOfSize:13];
        textLabel.textAlignment=NSTextAlignmentCenter;
        [view addSubview:textLabel];
    }
//
//   touxiaoView =[ShangchengTouTiao alloc]initWithFrame:CGRectMake(<#CGFloat x#>, <#CGFloat y#>, <#CGFloat width#>, <#CGFloat height#>)


}
@end
