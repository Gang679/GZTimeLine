//
//  GZTableViewCell.m
//  GZTimeLine
//
//  Created by xinshijie on 2017/5/31.
//  Copyright © 2017年 Mr.quan. All rights reserved.
//

#import "GZTableViewCell.h"
#import "SDAutoLayout.h"

@interface GZTableViewCell()
@property (strong, nonatomic) IBOutlet UIImageView *GZIma;
@property (strong, nonatomic) IBOutlet UILabel *TimeLabel;
@property (strong, nonatomic) IBOutlet UILabel *ContentLabel;


@end
@implementation GZTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    self.contentView.backgroundColor = [UIColor whiteColor];
    
    self.point.sd_layout.topSpaceToView(self.contentView, 20).leftSpaceToView(self.contentView, 5).widthIs(8).heightEqualToWidth();
    
    self.point.sd_cornerRadius = @(4);

    self.topLine.sd_layout.topEqualToView(self.contentView).leftSpaceToView(self.contentView,8.5).widthIs(1).bottomSpaceToView(self.point, 0);
    
    self.GZLine.sd_layout.topSpaceToView(self.point,0).leftSpaceToView(self.contentView,8.5).widthIs(1).bottomSpaceToView(self.contentView, 0);
    
    
    self.GZIma.sd_layout.topSpaceToView(self.contentView , 10).leftSpaceToView(self.point, 3).bottomSpaceToView(self.contentView, 10).rightSpaceToView(self.contentView, 10);
    _GZIma.image = [UIImage imageNamed:@"WechatIMG3"];
    
    // 指定为拉伸模式，伸缩后重新赋值
    
    self.GZIma.image = [self.GZIma.image stretchableImageWithLeftCapWidth:20 topCapHeight:30];
    
    self.TimeLabel.sd_layout.centerYEqualToView(self.point).leftSpaceToView(self.contentView, 35).rightSpaceToView(self.contentView, 15).heightIs(20);
    
    self.ContentLabel.sd_layout.topSpaceToView(self.TimeLabel, 15).leftEqualToView(self.TimeLabel).rightSpaceToView(self.contentView, 15).autoHeightRatio(0);
}

-(void)setModel:(GZTimeLineModel *)model{
    
    _model = model;
    self.ContentLabel.text=  model.title;
    self.TimeLabel.text = model.time;
    
    [self setupAutoHeightWithBottomView:self.ContentLabel bottomMargin:15];
}

@end
