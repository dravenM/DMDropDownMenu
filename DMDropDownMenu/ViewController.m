//
//  ViewController.m
//  DMDropDownMenu
//
//  Created by 王佳斌 on 16/5/19.
//  Copyright © 2016年 Draven_M. All rights reserved.
//

#import "ViewController.h"
#import "DMDropDownMenu.h"

@interface ViewController ()<DMDropDownMenuDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"DMDropDownMenu";
    //  数据源
    NSArray * dmArray1 = [NSArray arrayWithObjects:@"iPhone",@"iMac",@"iTouch",@"MacBook Air 13寸",@"MacBook Air 15 寸",@"MacBook Pro 13 寸",@"MacBook Pro 15 寸", nil];
    NSArray * dmArray2 = [NSArray arrayWithObjects:@"今晚与你记住蒲公英今晚与你记住蒲公英今晚与你记住蒲公英",@"今晚偏偏想起风的清劲",@"今晚偏偏想起风的清劲",@"回忆不在受制于我 我承认",@"回忆也许是你的", nil];
    
    DMDropDownMenu * dm1 = [[DMDropDownMenu alloc] initWithFrame:CGRectMake(10, 150, 299, 30)];
    dm1.delegate = self;
    [dm1 setListArray:dmArray1];
    [self.view addSubview:dm1];
    
    DMDropDownMenu * dm2 = [[DMDropDownMenu alloc] initWithFrame:CGRectMake(10, 200, 299, 30)];
    dm2.delegate = self;
    [dm2 setListArray:dmArray2];
    [self.view addSubview:dm2];

    // Do any additional setup after loading the view, typically from a nib.
}

- (void)selectIndex:(NSInteger)index AtDMDropDownMenu:(DMDropDownMenu *)dmDropDownMenu
{
    NSLog(@"dropDownMenu:%@ index:%d",dmDropDownMenu,index);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
