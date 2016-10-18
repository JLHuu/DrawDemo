//
//  ViewController.m
//  CustomControl
//
//  Created by knmk0002 on 16/10/18.
//  Copyright © 2016年 knmk0002. All rights reserved.
//

#import "ViewController.h"
#import "CircleControl.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    CircleControl *cview = [[CircleControl alloc] initWithFrame:CGRectMake(100, 100, 200, 200)];
    cview.circlecolor = [UIColor redColor];
    cview.radius = 50;
    cview.circlelinewidth = 10;
    cview.dragColor= [[UIColor purpleColor] colorWithAlphaComponent:0.7];
    cview.dragangle = M_PI+1;
    cview.backgroundColor = [UIColor greenColor];
    [self.view addSubview:cview];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
