//
//  ViewController.m
//  ResizeableImage
//
//  Created by cqh on 15/5/6.
//  Copyright (c) 2015年 Cnepay. All rights reserved.
//

#import "ViewController.h"
#import "NSDate+NSString.h"
#import "CPPresentedViewController.h"

@interface ViewController ()
@property (nonatomic ,weak) UIImageView *imageV;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImage *image = [UIImage imageNamed:@"right_bubble"];
    UIImageView*imageV = [[UIImageView alloc] initWithImage:image];
    self.imageV = imageV;
    [imageV setFrame:CGRectMake(100, 100, 100, 50)];
    [imageV setImage:[image resizableImageWithCapInsets:UIEdgeInsetsMake(0, 3, 0, 5) resizingMode:UIImageResizingModeStretch]];
    [self.view addSubview:imageV];
    
    
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    
    
    CPPresentedViewController *presnt = [CPPresentedViewController new] ;
    [self presentViewController:presnt animated:NO completion:nil];
//    [self.view addSubview:presnt.view];
    return;
    
    [NSDate dateWithFormatter:nil];
    [NSDate print];
    [[NSDate date] dateWithFormatter:nil];
    [[NSDate date] dateWithFormatter:nil];
    [NSDate dateWithFormatter:nil];
    //默认的UIImageResizingModeTile
    [self.imageV setImage:[[UIImage imageNamed:@"left_bubble"] resizableImageWithCapInsets:UIEdgeInsetsMake(0, 5, 0, 3) resizingMode:UIImageResizingModeStretch]];
    [self snapShotWithView:self.imageV];
}

- (void)snapShotWithView:(UIView *)view{
    
    //afterUpdates 这个参数决定的是 是否等待View的样式被更新以后才截取新的图片
    //set:YES ==> 等到更新View的样式被update之后才截屏,setNO:==>立马截屏，无需等待
//    UIView *snapShotView = [view snapshotViewAfterScreenUpdates:YES];
//    UIView *snapShotView = [view snapshotViewAfterScreenUpdates:NO];
    UIView *snapShotView = [view resizableSnapshotViewFromRect:CGRectMake(10, 0, view.bounds.size.width - 10, view.bounds.size.height) afterScreenUpdates:YES withCapInsets:UIEdgeInsetsZero];
    
    snapShotView.center = CGPointMake(200, 200);
    [self.view addSubview:snapShotView];
}
@end
