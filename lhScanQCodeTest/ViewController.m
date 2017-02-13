//
//  ViewController.m
//  lhScanQCodeTest
//
//  Created by GZWei on 15/10/20.
//  Copyright © 2015年 GZWei. All rights reserved.
//

#import "ViewController.h"
#import "lhScanQCodeViewController.h"
#import <Masonry.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"首页";
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    [btn setFrame:CGRectMake(100, 100, 50, 50)];
    [btn setBackgroundColor:[UIColor redColor]];
    [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    UILabel *label = [[UILabel alloc]init];
    [self.view addSubview:label];
    label.text = @"请点击上方红色按钮";
    [label mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.equalTo(btn.mas_bottom).offset(20);
        make.centerX.equalTo(btn.mas_centerX);
        
    }];

    
    NSLog(@"%@%@%@",[[UIDevice currentDevice] name],[[UIDevice currentDevice] systemName],[[UIDevice currentDevice] systemVersion]);
    
}

-(void)btnClick:(UIButton *)btn
{
    lhScanQCodeViewController * sqVC = [[lhScanQCodeViewController alloc]init];
    UINavigationController * nVC = [[UINavigationController alloc]initWithRootViewController:sqVC];
    [self.navigationController presentViewController:nVC animated:YES completion:^{
        
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)scanButtonEvent:(id)sender {
    
    lhScanQCodeViewController * sqVC = [[lhScanQCodeViewController alloc]init];
    UINavigationController * nVC = [[UINavigationController alloc]initWithRootViewController:sqVC];
    [self.navigationController presentViewController:nVC animated:YES completion:^{
        
    }];
}


@end
