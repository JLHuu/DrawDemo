//
//  HUDView.m
//  SomeAnimation
//
//  Created by knmk0002 on 2016/11/29.
//  Copyright © 2016年 knmk0002. All rights reserved.
//

#import "HUDView.h"

@implementation HUDView

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(ctx, 10);// 画笔宽度
    CGContextSetStrokeColorWithColor(ctx, [UIColor redColor].CGColor);// 画笔色
    //画一个圆环
    CGContextAddArc(ctx, CGRectGetWidth(self.bounds)/2, CGRectGetHeight(self.bounds)/2, self.bounds.size.width>self.bounds.size.height?self.bounds.size.height/2-5:self.bounds.size.width/2-5, 0, 2*M_PI, 0);
    CGContextDrawPath(ctx, kCGPathStroke);
}

- (void)startanmiation
{
    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
    CGContextRef ctx = CGBitmapContextCreate(NULL, self.frame.size.width, self.frame.size.height, 8, 4 *self.frame.size.width, colorSpace, kCGImageAlphaPremultipliedFirst);
    UIGraphicsPushContext(ctx);
    CGColorSpaceRelease(colorSpace);
    CGContextSetLineWidth(ctx, 10);
    CGContextSetStrokeColorWithColor(ctx, [UIColor blueColor].CGColor);
    CGContextAddArc(ctx, CGRectGetWidth(self.bounds)/2, CGRectGetHeight(self.bounds)/2, self.bounds.size.width>self.bounds.size.height?self.bounds.size.height/2-5:self.bounds.size.width/2-5, 0, 2*M_PI, 0);
    CGContextDrawPath(ctx, kCGPathStroke);
    [UIView animateWithDuration:4 animations:^{
        [self setNeedsDisplay];
    }];
}

@end
