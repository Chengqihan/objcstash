//
//  CPPresentedViewController.m
//  ResizeableImage
//
//  Created by cqh on 15/5/10.
//  Copyright (c) 2015年 Cnepay. All rights reserved.
//

#import "CPPresentedViewController.h"

@interface CPPresentedViewController ()

@end

@implementation CPPresentedViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view setBackgroundColor:[UIColor brownColor]];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
