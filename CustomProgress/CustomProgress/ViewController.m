//
//  ViewController.m
//  CustomProgress
//
//  Created by knmk0002 on 16/9/23.
//  Copyright © 2016年 knmk0002. All rights reserved.
//

#import "ViewController.h"
#import "JLProgress.h"

@interface ViewController ()
@property(nonatomic,strong)JLProgress *pro;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.pro = [[JLProgress alloc] initWithFrame:CGRectMake(100, 100, 200, 1.5)];
    self.pro.pbackgroundcolor = [UIColor greenColor];
    self.pro.ptintcolor = [UIColor redColor];
    [self.view addSubview:self.pro];
}
- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [touches anyObject];
    CGPoint lastpoint = [touch previousLocationInView:self.view];
    CGPoint currentpoint = [touch locationInView:self.view];
    self.pro.progressvalue += (currentpoint.x - lastpoint.x)/self.pro.bounds.size.width;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
