//
//  ZYViewController.m
//  ZYLoading
//
//  Created by zhengya123 on 06/27/2019.
//  Copyright (c) 2019 zhengya123. All rights reserved.
//

#import "ZYViewController.h"
#import "UpVersionMethod.h"
#import "UIImage+ZYBundle.h"

@interface ZYViewController ()

@end

@implementation ZYViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    //[[UpVersionMethod shareView] upVersionisMessage:YES WithAPPID:@"1433894811"];
//    NSBundle *curB = [NSBundle bundleForClass:[self class]];
//    NSString * name = @"upVersionCancelBtnImage";
//    NSString *imgName = [NSString stringWithFormat:@"%@.png", name];
//    NSString *path = [curB pathForResource:imgName ofType:nil inDirectory:@"ZYImageModule.bundle"];

    
    NSString *bundlePath = [[NSBundle bundleForClass:[self class]].resourcePath
                            stringByAppendingPathComponent:@"/ZYImageModule.bundle"];
    NSBundle *resource_bundle = [NSBundle bundleWithPath:bundlePath];
    UIImage *image = [UIImage imageNamed:@"upVersionCancelBtnImage"
                                inBundle:resource_bundle
           compatibleWithTraitCollection:nil];
    
   
    UIImageView * img = [UIImageView new];
    img.frame = CGRectMake(10, 100, 100, 100);
    img.image = [UIImage Zy_imgWithName:@"upVersionHeaderImage" targetClass:[self class]];
    [self.view addSubview:img];
    //UIImage * imf = [UIImage Zy_imgWithName:@"upVersionCancelBtnImage" targetClass:[self class]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
