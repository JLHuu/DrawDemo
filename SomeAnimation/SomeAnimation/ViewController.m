//
//  ViewController.m
//  SomeAnimation
//
//  Created by knmk0002 on 2016/11/29.
//  Copyright © 2016年 knmk0002. All rights reserved.
//

#import "ViewController.h"
#import "HUDView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    HUDView *hview = [[HUDView alloc] initWithFrame:CGRectMake(100, 100, 200, 300)];
    hview.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:hview];
    [hview startanmiation];

    // Do any additional setup after loading the view, typically from a nib.
//    UIView * animView =[[UIView alloc]init];
//    animView.backgroundColor = [UIColor yellowColor];
//    animView.frame = CGRectMake(100, 100, 100, 100);
//    [self.view addSubview:animView];
//    
////    
////    弹簧动画的介绍
////    
//    CASpringAnimation * anim = [CASpringAnimation animation];
//    anim.keyPath = @"position.x";
//    anim.fromValue =@(animView.center.x);
//    anim.toValue = @(animView.center.x+50);
//    
////    默认是1 必须大于0
////    若你设置的值小于0  会有CoreAnimation: mass must be greater than 0.这个信息提示你
////    并且把你的小于0的值改成1
////    对象质量 质量越大 弹性越大 需要的动画时间越长
//    anim.mass = 1000;
////    
////    必须大于0  默认是100
////    若设置的小于0 会给你一个提示 并把值改成100
////    刚度系数，刚度系数越大，产生形变的力就越大，运动越快。
//    anim.stiffness = 900;
//    
//    
////    默认是10 必须大于或者等于0
////    若设置的小于0 会给你一个提示 并把值改成10
////    阻尼系数 阻止弹簧伸缩的系数 阻尼系数越大，停止越快。时间越短
//    anim.damping = 10;
//    
//    
////    默认是0
////    初始速度，正负代表方向，数值代表大小
//    
//    anim.initialVelocity = 20;
//    
////    计算从开始到结束的动画的时间，根据当前的参数估算时间
////    只读的，不能赋值
//    anim.duration = anim.settlingDuration;
//    anim.repeatCount = MAXFLOAT;
//    [animView.layer addAnimation:anim forKey:@""];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
