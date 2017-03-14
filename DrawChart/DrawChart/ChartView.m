//
//  ChartView.m
//  DrawChart
//
//  Created by knmk0002 on 2017/3/14.
//  Copyright © 2017年 knmk0002. All rights reserved.
//

#import "ChartView.h"
@implementation ChartPoint
{
    CGPoint _chartpoint;
}
-(instancetype)initWithpoint:(CGPoint)point
{
    if (self = [super init]) {
        _chartpoint = point;
    }
    return self;
}
-(CGPoint)point
{
    return _chartpoint;
}
@end
@interface ChartView ()
@property(nonatomic,strong)NSMutableArray <ChartPoint *>*chartpoints;

@end

@implementation ChartView

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    
    if (!self.chartpoints.count) {
        return;
    }
    // Drawing code
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGMutablePathRef path = CGPathCreateMutable();
    CGContextSetStrokeColorWithColor(ctx, [UIColor orangeColor].CGColor);
    CGContextSetLineWidth(ctx, 1.5);
    CGContextSetLineCap(ctx, kCGLineCapRound);
    CGPathMoveToPoint(path, NULL, self.chartpoints.firstObject.point.x, self.chartpoints.firstObject.point.y);
    for (ChartPoint *point in self.chartpoints) {
        CGPathAddLineToPoint(path, NULL, point.point.x, point.point.y);
    }
    CGContextAddPath(ctx, path);
    CGContextDrawPath(ctx, kCGPathStroke);
    CGPathRelease(path);
    
}
-(void)showchartwithpoints:(NSArray<ChartPoint *> *)ponits{
    [self.chartpoints removeAllObjects];
    [self.chartpoints addObjectsFromArray:ponits];
    [self setNeedsDisplay];
}
-(NSMutableArray<ChartPoint *> *)chartpoints
{
    if (!_chartpoints) {
        _chartpoints = [NSMutableArray arrayWithCapacity:0];
    }
    return _chartpoints;
}
@end
