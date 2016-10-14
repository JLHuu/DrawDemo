//
//  ViewController.m
//  GradualChangeColor
//
//  Created by knmk0002 on 16/10/10.
//  Copyright © 2016年 knmk0002. All rights reserved.
//

#import "ViewController.h"
#import "GraduateView.h"

@interface ViewController ()
@property(nonatomic,strong)UIView *colorBackgroundView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    GraduateView *g_view = [[GraduateView alloc] initWithFrame:CGRectMake(100, 100, 200, 200)];
    g_view.center = self.view.center;
    g_view.layer.masksToBounds = YES;
    g_view.layer.cornerRadius = 100;
    [g_view setGraduatetype:GraduateTypeLefttopToRightbottom];
    [g_view addgraduatecolor:[[Graduatecolor alloc] initWithColor:[UIColor redColor] Location:0]];
    [g_view addgraduatecolor:[[Graduatecolor alloc] initWithColor:[UIColor yellowColor] Location:0]];
    [g_view addgraduatecolor:[[Graduatecolor alloc] initWithColor:[UIColor greenColor] Location:0]];
    [g_view addgraduatecolor:[[Graduatecolor alloc] initWithColor:[UIColor blueColor] Location:0]];
    [g_view addgraduatecolor:[[Graduatecolor alloc] initWithColor:[UIColor purpleColor] Location:0]];
    [self.view addSubview:g_view];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
