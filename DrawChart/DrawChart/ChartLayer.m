//
//  ChartLayer.m
//  DrawChart
//
//  Created by knmk0002 on 2017/3/15.
//  Copyright © 2017年 knmk0002. All rights reserved.
//

#import "ChartLayer.h"

@implementation ChartLayer
{
    NSArray <ChartPoint *>*_anpoints;
}
-(void)showchartwithpoints:(NSArray<ChartPoint *> *)ponits
{
    _anpoints = ponits;
    [self animation];
}
- (void)animation
{
    [self anmiationpath];
    self.lineWidth=2;
    self.fillColor = [UIColor clearColor].CGColor;
    self.lineCap = kCALineCapRound;
    self.strokeColor = [UIColor orangeColor].CGColor;
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"strokeEnd"];
    animation.fromValue = @(0);
    animation.toValue = @(1);
    animation.duration = 5;
    animation.removedOnCompletion = YES;
    [self addAnimation:animation forKey:@"pathanmiation"];
}
- (void)anmiationpath
{
    CGMutablePathRef path = CGPathCreateMutable();
    CGPathMoveToPoint(path, NULL, _anpoints.firstObject.point.x, _anpoints.firstObject.point.y);
    for (ChartPoint *point in _anpoints) {
        if (point == _anpoints.firstObject) {
            
        }else{
            CGPathAddLineToPoint(path, NULL, point.point.x, point.point.y);
        }
    }
    self.path = path;
    CGPathRelease(path);
}

@end
