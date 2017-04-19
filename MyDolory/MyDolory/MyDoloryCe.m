//
//  MyDoloryCe.m
//  MyDolory
//
//  Created by izaodao on 16/8/12.
//  Copyright © 2016年 izaodao. All rights reserved.
//

#import "MyDoloryCe.h"

@implementation MyDoloryCe

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{

    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        
    
        _lable1 = [[UILabel alloc]init];
        _lable1.frame = CGRectMake(10, 10, 40, 40);
        _lable1.layer.cornerRadius = 20;
        _lable1.clipsToBounds = YES;
        _lable1.backgroundColor = [UIColor redColor];
        _lable1.textAlignment = NSTextAlignmentCenter;
        _lable1.textColor = [UIColor blackColor];
        [self.contentView addSubview:_lable1];
        
        
        
        _lable2 = [[UILabel alloc]init];
        _lable2.frame = CGRectMake(55, 10, 40, 40);
        _lable2.layer.cornerRadius = 20;
        _lable2.clipsToBounds = YES;
        _lable2.backgroundColor = [UIColor redColor];
        _lable2.textAlignment = NSTextAlignmentCenter;
        _lable2.textColor = [UIColor blackColor];
        [self.contentView addSubview:_lable2];
        
        
        
        _lable3 = [[UILabel alloc]init];
        _lable3.frame = CGRectMake(100, 10, 40, 40);
        _lable3.layer.cornerRadius = 20;
        _lable3.clipsToBounds = YES;
        _lable3.backgroundColor = [UIColor redColor];
        _lable3.textAlignment = NSTextAlignmentCenter;
        _lable3.textColor = [UIColor blackColor];
        [self.contentView addSubview:_lable3];
        
        
        _lable4 = [[UILabel alloc]init];
        _lable4.frame = CGRectMake(145, 10, 40, 40);
        _lable4.layer.cornerRadius = 20;
        _lable4.clipsToBounds = YES;
        _lable4.backgroundColor = [UIColor redColor];
        _lable4.textAlignment = NSTextAlignmentCenter;
        _lable4.textColor = [UIColor blackColor];
        [self.contentView addSubview:_lable4];
        
        
        
        _lable5 = [[UILabel alloc]init];
        _lable5.frame = CGRectMake(190, 10, 40, 40);
        _lable5.layer.cornerRadius = 20;
        _lable5.clipsToBounds = YES;
        _lable5.backgroundColor = [UIColor redColor];
        _lable5.textAlignment = NSTextAlignmentCenter;
        _lable5.textColor = [UIColor blackColor];
        [self.contentView addSubview:_lable5];
        
        
        
        
        _lable6 = [[UILabel alloc]init];
        _lable6.frame = CGRectMake(235, 10, 40, 40);
        _lable6.layer.cornerRadius = 20;
        _lable6.clipsToBounds = YES;
        _lable6.backgroundColor = [UIColor redColor];
        _lable6.textAlignment = NSTextAlignmentCenter;
        _lable6.textColor = [UIColor blackColor];
        [self.contentView addSubview:_lable6];
        
   
        
        
        _lable7 = [[UILabel alloc]init];
        _lable7.frame = CGRectMake(300, 10, 40, 40);
        _lable7.layer.cornerRadius = 20;
        _lable7.clipsToBounds = YES;
        _lable7.backgroundColor = [UIColor blueColor];
        _lable7.textAlignment = NSTextAlignmentCenter;
        _lable7.textColor = [UIColor greenColor];
        _lable7.textColor = [UIColor blackColor];
        [self.contentView addSubview:_lable7];
        
        
    
    }



    return self;


}

-(void)initWithCellData:(NSArray *)dataSource andIndex:(NSIndexPath *)index
{
    NSString *sting = dataSource[index.row];
    
    NSArray *array = [sting componentsSeparatedByString:@" - "];
    
    _lable1.text = array[0];
    _lable2.text = array[1];
    _lable3.text = array[2];
    _lable4.text = array[3];
    _lable5.text = array[4];
    _lable6.text = array[5];
    _lable7.text = array[6];


}

@end
