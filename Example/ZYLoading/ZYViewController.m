//
//  ZYViewController.m
//  ZYLoading
//
//  Created by zhengya123 on 06/27/2019.
//  Copyright (c) 2019 zhengya123. All rights reserved.
//

#import "ZYViewController.h"
#import "UpVersionMethod.h"

@interface ZYViewController ()

@end

@implementation ZYViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [[UpVersionMethod shareView] upVersionisMessage:YES WithAPPID:@"1433894811"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
