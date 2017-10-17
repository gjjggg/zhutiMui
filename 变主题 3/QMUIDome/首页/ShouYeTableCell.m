//
//  ShouYeTableCell.m
//  QMUIDome
//
//  Created by 郭洪安 on 2017/2/15.
//  Copyright © 2017年 UIViewCon. All rights reserved.
//

#import "ShouYeTableCell.h"

@interface ShouYeTableCell ()

//显示照片
@property (nonatomic,retain) UIImageView * icon;
//商品名
@property (nonatomic,retain) UILabel * name;
//数量
@property (nonatomic,retain) UILabel * num;
//钱
@property (nonatomic,retain) UILabel * price;
//时间
@property (nonatomic,retain) UILabel *dateLabel;


@end
@implementation ShouYeTableCell

-(id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    if (self) {
        [self CreateShopCell];
    }
    
    return self;
}


-(void)CreateShopCell
{
    
    
    
    
//    UILabel * label=[[UILabel alloc]initWithFrame:CGRectMake(10, 99.7, SCREEN_WIDTH-20,0.3)];
//    label.backgroundColor=[UIColor grayColor];
//    [self.contentView addSubview:label];
//    
    
    
    self.icon=[[UIImageView alloc]initWithFrame:CGRectMake(0,0,SCREEN_WIDTH,150)];
    self.icon.backgroundColor=[UIColor whiteColor];
    self.icon.userInteractionEnabled=YES;
    [self.contentView addSubview:self.icon];

    
    
    
    
    
    
    self.name=[[UILabel alloc]initWithFrame:CGRectMake(5,MaxY(self.icon),SCREEN_WIDTH/2, 30)];
    self.name.font=[UIFont systemFontOfSize:15];
    self.name.textColor=[UIColor grayColor];
    self.name.backgroundColor=[UIColor whiteColor];
    [self.contentView addSubview:self.name];
 
    
    
    
    self.num=[[UILabel alloc]initWithFrame:CGRectMake(SCREEN_WIDTH/2+5,MaxY(self.icon),SCREEN_WIDTH/2-5,  30)];
    self.num.textColor=[UIColor orangeColor];
    self.num.font=[UIFont systemFontOfSize:15];
    self.num.backgroundColor=[UIColor whiteColor];
    self.num.textAlignment = NSTextAlignmentRight;
    [self.contentView addSubview:self.num];

  
    
}
- (void)updateCellWithFirstQuanZiModel:(NSDictionary *) app2 andIndexPath:(NSIndexPath *)indexPath
{
    [self.icon setImageURL:[NSURL URLWithString:app2[@"img"]]];
    self.name.text = app2[@"title"];
    self.num.text = app2[@"sub_title"];
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}

@end

