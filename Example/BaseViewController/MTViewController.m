//
//  MTViewController.m
//  BaseViewController
//
//  Created by 13162378587@163.com on 02/01/2021.
//  Copyright (c) 2021 13162378587@163.com. All rights reserved.
//

#import "MTViewController.h"
#import <BaseViewController/BaseWebviewController.h>

@interface MTViewController ()

@end

@implementation MTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor redColor];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.backgroundColor = [UIColor systemPinkColor];
    [btn setTitle:@"测试" forState:UIControlStateNormal];
    btn.frame = CGRectMake(0, 0, 100, 100);
    [btn addTarget:self action:@selector(respondsToBtn:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)respondsToBtn:(UIButton *)btn
{
    BaseWebviewController *aa = [[BaseWebviewController alloc] init];
    [self.navigationController pushViewController:aa animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
