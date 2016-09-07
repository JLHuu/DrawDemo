//
//  ViewController.m
//  ScreenCat
//
//  Created by knmk0002 on 16/9/7.
//  Copyright © 2016年 knmk0002. All rights reserved.
//

#import "ViewController.h"
#import "Myview.h"

@interface ViewController ()

@end

@implementation ViewController
{
    UIImageView *imv;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    imv = [[UIImageView alloc] init];
//    UIImage *im = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"test" ofType:@"png"]];
//    [imv setImage:im];
//    [imv setFrame:CGRectMake(10, 60, CGRectGetWidth(self.view.bounds)-20, (CGRectGetWidth(self.view.bounds)-20)*im.scale)];
//    [self.view addSubview:imv];
    Myview *myview = [[Myview alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:myview];
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(0, 0, 100, 40);
    btn.center = CGPointMake(CGRectGetWidth(self.view.bounds)/2, CGRectGetMaxY(self.view.frame)-60);
    btn.backgroundColor = [UIColor cyanColor];
    [btn setTitle:@"清空" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [btn addTarget:myview action:@selector(Clearpath) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}
//-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
//{
//    CGPoint point = [[touches anyObject] locationInView:self.view];
//    UIGraphicsBeginImageContext(self.view.bounds.size);
//    CGContextRef ctx = UIGraphicsGetCurrentContext();
//    CGContextSetRGBStrokeColor(ctx, 0, 0, 0, 1);
//    CGContextSetLineWidth(ctx, 5);
//    CGContextSetLineCap(ctx, kCGLineCapRound);
//    CGContextBeginPath(ctx);
//    CGContextMoveToPoint(ctx, point.x, point.y);
//    
//}
//-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
//{
//    CGPoint point = [[touches anyObject] locationInView:self.view];
//    CGContextRef ctx = UIGraphicsGetCurrentContext();
//    CGContextMoveToPoint(ctx, point.x, point.y);
//    CGContextAddLineToPoint(ctx, point.x, point.y);
//    CGContextStrokePath(ctx);
//
//}
//-(void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
//{
//    CGContextRef ctx = UIGraphicsGetCurrentContext();
//    CGContextStrokePath(ctx);
//    UIImage *im = UIGraphicsGetImageFromCurrentImageContext();
//    UIGraphicsEndImageContext();
//    
//    [imv setImage:im];
//}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
