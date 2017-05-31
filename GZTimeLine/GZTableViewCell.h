//
//  GZTableViewCell.h
//  GZTimeLine
//
//  Created by xinshijie on 2017/5/31.
//  Copyright © 2017年 Mr.quan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GZTimeLineModel.h"

@interface GZTableViewCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UIView *point;
@property (strong, nonatomic) IBOutlet UIView *GZLine;
@property (nonatomic, strong)GZTimeLineModel *model;
@end
