//
//  LargeBallViewController.m
//  MyDolory
//
//  Created by izaodao on 17/4/5.
//  Copyright © 2017年 izaodao. All rights reserved.
//

#import "LargeBallViewController.h"
#import "LargeBallTableViewCell.h"
#define k_ScreenSize  [UIScreen mainScreen].bounds.size

@interface LargeBallViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic,strong)NSMutableArray *dataSource;
@property (nonatomic,strong)UITableView *table;

@end

@implementation LargeBallViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  
    self.view.backgroundColor = [UIColor blueColor];
    _dataSource = [[NSMutableArray alloc]init];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(100, 100, 100, 50);
    button.backgroundColor = [UIColor redColor];
    [button setTitle:@"下一组" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(pressToTargert:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    
    UIButton *backButton  = [UIButton buttonWithType:UIButtonTypeCustom];
    backButton.backgroundColor = [UIColor redColor];
    [backButton setTitle:@"返回" forState:UIControlStateNormal];
    [backButton addTarget:self action:@selector(pressToBack) forControlEvents:UIControlEventTouchUpInside];
    backButton.frame = CGRectMake(10, 20, 50, 20);
    [self.view addSubview:backButton];

    
}
-(void)pressToBack{
    [self dismissViewControllerAnimated:YES completion:nil];

}

-(void)pressToTargert:(UIButton *)button{
    
    NSMutableArray *newArray = [[NSMutableArray alloc]init];
    
    NSMutableArray *array = [[NSMutableArray alloc]init];
    for (int i = 1; i<=35; i++) {
        NSString * str = [NSString stringWithFormat:@"%2d",i];
        [array addObject:str];
    }
    
    NSArray *retArrray = [self doloryWithContentArray:array];
    NSMutableArray *blueArray = [[NSMutableArray alloc]init];
    for (int i = 1; i<= 12; i++) {
        NSString * str = [NSString stringWithFormat:@"%2d",i];
        [blueArray addObject:str];
    }
    NSMutableArray *te4array = [NSMutableArray arrayWithArray:retArrray];
    NSMutableArray *p = [self sortArrayWithArray:te4array];
    [newArray addObjectsFromArray:p];
   
    
    NSArray *blueTempArray = [self ardomProduceBlueBallAccordingToArray:blueArray];
    NSMutableArray *secfArray = [NSMutableArray arrayWithArray:blueTempArray];
    NSMutableArray *jjjj = [self sortArrayWithArray:secfArray];
    [newArray addObjectsFromArray:jjjj];
    
    NSString *lastString = [newArray componentsJoinedByString:@" - "];
    [_dataSource addObject:lastString];
    
    
    
    _table = [[UITableView alloc]initWithFrame:CGRectMake(0, 160, k_ScreenSize.width, k_ScreenSize.height - 160) style:UITableViewStylePlain];
    _table.backgroundColor = [UIColor whiteColor];
    _table.delegate = self;
    _table.dataSource = self;
    _table.rowHeight = 50;
    [self.view addSubview:_table];
}


-(NSMutableArray *)sortArrayWithArray:(NSMutableArray *)array{

    for (int i = 0; i<[array count]; i++)
    {
        for (int j=i+1; j<[array count]; j++)
        {
            int a = [[array objectAtIndex:i] intValue];
            //                NSLog(@"a = %d",a);
            int b = [[array objectAtIndex:j] intValue];
            //                NSLog(@"b = %d",b);
            //                NSLog(@"------");
            if (a > b)
            {
                [array replaceObjectAtIndex:i withObject:[NSString stringWithFormat:@"%2d",b]];
                [array replaceObjectAtIndex:j withObject:[NSString stringWithFormat:@"%2d",a]];
            }
            
        }
        
    }
    

    return array;

}
-(NSArray *)doloryWithContentArray:(NSArray *)array
{
    NSMutableArray *Resultarray = [[NSMutableArray alloc]init];
    NSMutableArray *contentArray = [[NSMutableArray alloc]initWithArray:array];
    NSInteger totalCunt = contentArray.count;
    int index = arc4random() % totalCunt;
    [Resultarray addObject:contentArray[index]];
    [contentArray removeObjectAtIndex:index];
    
    totalCunt = contentArray.count;
    index = arc4random() % totalCunt;
    [Resultarray addObject:contentArray[index]];
    [contentArray removeObjectAtIndex:index];
    
    totalCunt = contentArray.count;
    index = arc4random() % totalCunt;
    [Resultarray addObject:contentArray[index]];
    [contentArray removeObjectAtIndex:index];
    
    
    totalCunt = contentArray.count;
    index = arc4random() % totalCunt;
    [Resultarray addObject:contentArray[index]];
    [contentArray removeObjectAtIndex:index];
    
    
    totalCunt = contentArray.count;
    index = arc4random() % totalCunt;
    [Resultarray addObject:contentArray[index]];
    [contentArray removeObjectAtIndex:index];
    
    return Resultarray;
    
}

- (NSArray *)ardomProduceBlueBallAccordingToArray:(NSArray *)array
{   NSMutableArray *resultArray = [[NSMutableArray alloc]init];
    NSMutableArray *tempArray = [[NSMutableArray alloc]init];
    [tempArray addObjectsFromArray:array];
    
    int index = arc4random()%tempArray.count;
    NSString  *result = tempArray[index];
    [tempArray removeObjectAtIndex:index];
    [resultArray addObject:result];
    
    
    NSInteger totalCount = tempArray.count;
    int index1 = arc4random()%totalCount;
    NSString  *result1 = tempArray[index];
    [resultArray addObject:result1];
    [tempArray removeObjectAtIndex:index1];
    return resultArray;
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    return 1;
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return _dataSource.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *identify = @"mydolory";
    LargeBallTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    if (cell == nil) {
        cell = [[LargeBallTableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:identify];
        
    }
    cell.backgroundColor = [UIColor clearColor];
    [cell initWithCellData:_dataSource andIndex:indexPath];
    return cell;
    
}

@end
