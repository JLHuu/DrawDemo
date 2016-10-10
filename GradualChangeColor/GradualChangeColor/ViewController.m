//
//  ViewController.m
//  GradualChangeColor
//
//  Created by knmk0002 on 16/10/10.
//  Copyright © 2016年 knmk0002. All rights reserved.
//

#import "ViewController.h"
#import <QuartzCore/QuartzCore.h>
#import "GraduateView.h"
@interface ViewController ()
@property(nonatomic,strong)UIView *colorBackgroundView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.colorBackgroundView = [[UIView alloc] init];
    self.colorBackgroundView.frame = CGRectMake(20, 70, CGRectGetWidth(self.view.frame)-2*20, 50);
    
    [self.view addSubview:self.colorBackgroundView];
    CAGradientLayer *gradientLayer = [[CAGradientLayer alloc] init];
    gradientLayer.colors = @[(__bridge id)[UIColor redColor].CGColor,(__bridge id)[UIColor blueColor].CGColor,(__bridge id)[UIColor yellowColor].CGColor];
    gradientLayer.locations = @[@(0.7),@(0.9)];
    gradientLayer.startPoint = CGPointMake(0, 1);
    
    gradientLayer.endPoint = CGPointMake(1, 0);
    
    gradientLayer.frame = CGRectMake(0, 0, CGRectGetWidth(self.colorBackgroundView.frame), CGRectGetHeight(self.colorBackgroundView.frame));
    
    [self.colorBackgroundView.layer addSublayer:gradientLayer];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
