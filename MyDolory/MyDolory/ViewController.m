//
//  ViewController.m
//  MyDolory
//
//  Created by izaodao on 16/8/5.
//  Copyright © 2016年 izaodao. All rights reserved.
//

#import "ViewController.h"
#import "MyDoloryCe.h"

#define k_ScreenSize [UIScreen mainScreen].bounds.size

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>

@property (nonatomic,strong)UITableView *table;
@property (nonatomic,strong)NSMutableArray *dataSource;

@end

@implementation ViewController

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

    NSMutableArray *array = [[NSMutableArray alloc]init];
    for (int i = 1; i<=33; i++) {
        NSString * str = [NSString stringWithFormat:@"%2d",i];
        [array addObject:str];
    }
    
    NSArray *retArrray = [self doloryWithContentArray:array];
    NSMutableArray *blueArray = [[NSMutableArray alloc]init];
    for (int i = 1; i<= 16; i++) {
        NSString * str = [NSString stringWithFormat:@"%2d",i];
        [blueArray addObject:str];
    }
    NSString *blueString = [self ardomProduceBlueBallAccordingToArray:blueArray];
    NSMutableArray *p = [[NSMutableArray alloc]initWithArray:retArrray];
    
    for (int i = 0; i<[p count]; i++)
    {
        for (int j=i+1; j<[p count]; j++)
        {
            int a = [[p objectAtIndex:i] intValue];
            //                NSLog(@"a = %d",a);
            int b = [[p objectAtIndex:j] intValue];
            //                NSLog(@"b = %d",b);
            //                NSLog(@"------");
            if (a > b)
            {
                [p replaceObjectAtIndex:i withObject:[NSString stringWithFormat:@"%2d",b]];
                [p replaceObjectAtIndex:j withObject:[NSString stringWithFormat:@"%2d",a]];
            }
            
        }
        
    }
    
    NSString *string = [p componentsJoinedByString:@" - "];
    NSString *lastString = [string stringByAppendingString:[NSString stringWithFormat:@" - %@",blueString]];
    [_dataSource addObject:lastString];
    
    _table = [[UITableView alloc]initWithFrame:CGRectMake(0, 160, k_ScreenSize.width, k_ScreenSize.height - 160) style:UITableViewStylePlain];
    _table.backgroundColor = [UIColor whiteColor];
    _table.delegate = self;
    _table.dataSource = self;
    _table.rowHeight = 50;
    [self.view addSubview:_table];
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
    
    
    totalCunt = contentArray.count;
    index = arc4random() % totalCunt;
    [Resultarray addObject:contentArray[index]];
    [contentArray removeObjectAtIndex:index];
    return Resultarray;

}

- (NSString *)ardomProduceBlueBallAccordingToArray:(NSArray *)array
{
  
    int index = arc4random()%array.count;
    NSString  *result = array[index];
    return result;
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{

    return 1;

}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

    return _dataSource.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *identify = @"mydolory";
    MyDoloryCe *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    if (cell == nil) {
        cell = [[MyDoloryCe alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:identify];
        
    }
    cell.backgroundColor = [UIColor clearColor];
    [cell initWithCellData:_dataSource andIndex:indexPath];
    return cell;
    
}
@end
