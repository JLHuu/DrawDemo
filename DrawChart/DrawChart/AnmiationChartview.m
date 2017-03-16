//
//  AnmiationChartview.m
//  DrawChart
//
//  Created by knmk0002 on 2017/3/15.
//  Copyright © 2017年 knmk0002. All rights reserved.
//

#import "AnmiationChartview.h"
#import "ChartLayer.h"
@interface AnmiationChartview ()
@end
@implementation AnmiationChartview
+(Class)layerClass
{
    return [ChartLayer class];
}
-(void)showchartwithpoints:(NSArray<ChartPoint *> *)ponits{

    ChartLayer *layer = (ChartLayer *)self.layer;
    [layer showchartwithpoints:ponits];
}
-(void)drawRect:(CGRect)rect
{
    // 画网格线
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(ctx, 1);
    CGContextSetStrokeColorWithColor(ctx, [UIColor greenColor].CGColor);
    CGFloat a[] = {3,1};
    CGContextSetLineDash(ctx, 0, a, 2);
    for (int i=0; i<10; i++) {
        int x = (int)CGRectGetWidth(self.bounds)/11*(i+1);
        CGMutablePathRef path = CGPathCreateMutable();
        CGPathMoveToPoint(path, NULL, 0, x);
        CGPathAddLineToPoint(path, NULL, CGRectGetWidth(self.bounds), x);
        CGContextAddPath(ctx, path);
        CGContextDrawPath(ctx, kCGPathStroke);
        CGPathRelease(path);
        
    }
    for (int j=0; j<(int)CGRectGetHeight(self.bounds)/10; j++) {
        int y = (int)CGRectGetHeight(self.bounds)/11*(j+1);
        CGMutablePathRef path = CGPathCreateMutable();
        CGPathMoveToPoint(path, NULL, y, 0);
        CGPathAddLineToPoint(path, NULL, y, CGRectGetHeight(self.bounds));
        CGContextAddPath(ctx, path);
        CGContextDrawPath(ctx, kCGPathStroke);
        CGPathRelease(path);
    }
}
@end
