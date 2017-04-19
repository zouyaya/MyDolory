//
//  LargeBallTableViewCell.h
//  MyDolory
//
//  Created by izaodao on 17/4/5.
//  Copyright © 2017年 izaodao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LargeBallTableViewCell : UITableViewCell

@property (nonatomic,strong)UILabel *lable1;


@property (nonatomic,strong)UILabel *lable2;

@property (nonatomic,strong)UILabel *lable3;


@property (nonatomic,strong)UILabel *lable4;


@property (nonatomic,strong)UILabel *lable5;

@property (nonatomic,strong)UILabel *lable6;


@property (nonatomic,strong)UILabel *lable7;


-(void)initWithCellData:(NSArray *)dataSource andIndex:(NSIndexPath *)index;

@end
