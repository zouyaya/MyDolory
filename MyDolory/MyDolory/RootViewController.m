//
//  RootViewController.m
//  MyDolory
//
//  Created by izaodao on 17/4/5.
//  Copyright © 2017年 izaodao. All rights reserved.
//

#import "RootViewController.h"
#import "ViewController.h"
#import "LargeBallViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *twoButton = [UIButton buttonWithType:UIButtonTypeCustom];
    twoButton.backgroundColor = [UIColor redColor];
    twoButton.frame = CGRectMake(100, 100, 175, 50);
    [twoButton addTarget:self action:@selector(pressToDoubleColorBall) forControlEvents:UIControlEventTouchUpInside];
    [twoButton setTitle:@"双色球" forState:UIControlStateNormal];
    [self.view addSubview:twoButton];
    
    
    
    UIButton *largeButton = [UIButton buttonWithType:UIButtonTypeCustom];
    largeButton.backgroundColor = [UIColor redColor];
    [largeButton setTitle:@"大乐透" forState:UIControlStateNormal];
    largeButton.frame = CGRectMake(100, 300, 175, 50);
    [largeButton addTarget:self action:@selector(pressToLargeBall) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:largeButton];
    
    
}

-(void)pressToDoubleColorBall{

    ViewController *viewVC = [[ViewController alloc]init];
    [self presentViewController:viewVC animated:YES completion:nil];

}

-(void)pressToLargeBall{
    LargeBallViewController *largeBallVC = [[LargeBallViewController alloc]init];
    [self presentViewController:largeBallVC animated:YES completion:nil];

}
@end
