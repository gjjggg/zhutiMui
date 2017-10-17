//
//  QDCommonListViewController.h
//  QMUIDome
//
//  Created by 郭洪安 on 2017/10/17.
//  Copyright © 2017年 UIViewCon. All rights reserved.
//

#import "QDCommonViewListBase.h"

@interface QDCommonListViewController : QDCommonViewListBase

@end
@interface QDCommonListViewController (UISubclassingHooks)
-(void)initDataSource;
- (void)didSelectCellWithTitle:(NSString *)title;
@end
