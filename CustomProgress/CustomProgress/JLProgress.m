//
//  JLProgress.m
//  CustomProgress
//
//  Created by knmk0002 on 16/9/23.
//  Copyright © 2016年 knmk0002. All rights reserved.
//

#import "JLProgress.h"
@interface JLProgress ()
@end

@implementation JLProgress
{
    UIColor *_ptintcolor;
}
-(void)setProgressvalue:(CGFloat)progressvalue
{
    if (progressvalue>1) {
        progressvalue =1;
    }
    if (progressvalue<0) {
        progressvalue =0;
    }
    _progressvalue = progressvalue;
    [self setNeedsDisplay];
}
-(void)setPtintcolor:(UIColor *)ptintcolor
{
    _ptintcolor = ptintcolor;
}
-(UIColor *)ptintcolor
{
    return _ptintcolor?_ptintcolor:[UIColor blueColor];
}
-(void)setPbackgroundcolor:(UIColor *)pbackgroundcolor
{
    _pbackgroundcolor = pbackgroundcolor;
    [self setNeedsDisplay];
}
- (void)drawRect:(CGRect)rect {
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGContextClearRect(ctx, rect);
    CGContextSetFillColorWithColor(ctx,[UIColor grayColor].CGColor);
    CGContextFillRect(ctx, rect);
    if (self.pbackgroundcolor) {
        CGContextClearRect(ctx, rect);
        CGContextSetFillColorWithColor(ctx,self.pbackgroundcolor.CGColor);
        CGContextFillRect(ctx, rect);
    }
    if (self.progressvalue) {
        CGContextSetFillColorWithColor(ctx, self.ptintcolor.CGColor);
        CGContextFillRect(ctx, CGRectMake(0, 0, self.progressvalue*rect.size.width, rect.size.height));
    }
}
@end
