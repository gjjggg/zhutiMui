//
//  QDCommonListViewController.h
//  QMUIDome
//
//  Created by 郭洪安 on 2017/2/15.
//  Copyright © 2017年 UIViewCon. All rights reserved.
//

#import <QMUIKit/QMUIKit.h>

@interface QDCommonListViewController : QDCommonViewListBase


//@property (nonatomic,strong) NSMutableArray * banner;
//@property (nonatomic,strong) NSMutableArray * bannerImageArr;
//@property(nonatomic,strong)NSArray * dataSource;
//
//// 子类继承，可以不调super
@end
@interface QDCommonListViewController (UISubclassingHooks)
//
//// 子类继承，可以不调super
- (void)initDataSource;
//-(void) creaderHeader;
//- (void)didSelectCellWithTitle:(NSString *)title;

@end
