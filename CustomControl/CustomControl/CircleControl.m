//
//  CircleControl.m
//  CustomControl
//
//  Created by knmk0002 on 16/10/18.
//  Copyright © 2016年 knmk0002. All rights reserved.
//

#import "CircleControl.h"

@implementation CircleControl
{
    
}
-(instancetype)init
{
    if (self = [super init]) {
        [self defaultsetting];
    }
    return self;
}
-(instancetype)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super initWithCoder:aDecoder]) {
        [self defaultsetting];
    }
    return self;
}
-(instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self defaultsetting];
    }
    return self;
}
- (void)defaultsetting
{
    self.radius = 0;
    self.circlecolor = [UIColor grayColor];
    self.circletintcolor = [UIColor blueColor];
    self.dragColor = [UIColor whiteColor];
    self.dragtintcolor = [UIColor lightGrayColor];
    self.dragradius = 15;
    self.circlelinewidth = 2;
    self.dragangle = 0;
}
-(void)drawRect:(CGRect)rect
{
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    // 画圆环
    //x,y为圆点坐标，startAngle为开始的弧度，endAngle为 结束的弧度，clockwise 0为顺时针，1为逆时针
    CGContextAddArc(ctx, CGRectGetWidth(self.frame)/2, CGRectGetHeight(self.frame)/2, self.radius, 0, 2*M_PI, 0);
    CGContextSetLineWidth(ctx, self.circlelinewidth);//线宽
    CGContextSetStrokeColorWithColor(ctx, self.circlecolor.CGColor);//画笔颜色
    CGContextSetLineCap(ctx, kCGLineCapButt);// 画线的线头形状
    CGContextDrawPath(ctx, kCGPathStroke);
    //画拖拽〇
    CGContextSetFillColorWithColor(ctx, self.dragColor.CGColor);//填充色
    CGContextAddArc(ctx, CGRectGetWidth(self.frame)/2+cosf(self.dragangle)*self.radius, CGRectGetHeight(self.frame)/2+sinf(self.dragangle)*self.radius, 20, 0, 2*M_PI, 0);
    CGContextDrawPath(ctx, kCGPathFill);
}

-(BOOL)beginTrackingWithTouch:(UITouch *)touch withEvent:(UIEvent *)event
{
    NSLog(@"%s",__FUNCTION__);
    return YES;
}
-(BOOL)continueTrackingWithTouch:(UITouch *)touch withEvent:(UIEvent *)event
{
    NSLog(@"%s",__FUNCTION__);
    return YES;
}
-(void)endTrackingWithTouch:(UITouch *)touch withEvent:(UIEvent *)event
{
    NSLog(@"%s",__FUNCTION__);
}
-(void)cancelTrackingWithEvent:(UIEvent *)event
{
    NSLog(@"%s",__FUNCTION__);
}
@end
