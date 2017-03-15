//
//  ViewController.m
//  DrawChart
//
//  Created by knmk0002 on 2017/3/14.
//  Copyright © 2017年 knmk0002. All rights reserved.
//

#import "ViewController.h"
#import "ChartView.h"
#import "AnmiationChartview.h"
@interface ViewController ()
@property(nonatomic,strong)ChartView *cv;
@property(nonatomic,strong)AnmiationChartview *anv;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    self.cv = [[ChartView alloc] initWithFrame:CGRectMake(0, 0, 200, 200)];
//    self.cv.center = self.view.center;
//    [self.view addSubview:self.cv];
//    [self.cv setBackgroundColor:[UIColor lightGrayColor]];
//    [self nextChart];
    self.anv = [[AnmiationChartview alloc] initWithFrame:CGRectMake(0, 0, 200, 200)];
    self.anv.center = self.view.center;
    [self.view addSubview:self.anv];
    [self.anv setBackgroundColor:[UIColor lightGrayColor]];
    [self nextChart];
    
}
- (void)nextChart
{
    float x,y;
    NSMutableArray *arr = [NSMutableArray arrayWithCapacity:0];
    for (int i=0; i<40; i++) {
        x += 4.95;
        y = arc4random()%100+50;
        ChartPoint *point = [[ChartPoint alloc] initWithpoint:CGPointMake(x, y)];
        [arr addObject:point];
    }
    [self.anv showchartwithpoints:arr];
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self nextChart];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
