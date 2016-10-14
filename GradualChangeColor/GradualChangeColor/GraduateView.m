//
//  GraduateView.m
//  GradualChangeColor
//
//  Created by knmk0002 on 16/10/10.
//  Copyright © 2016年 knmk0002. All rights reserved.
//

#import "GraduateView.h"

@implementation GraduateView
{
    NSMutableArray <UIColor *>*_colors;
    NSMutableArray <NSNumber *>*_locations;
}
-(instancetype)init
{
    if (self = [super init]) {
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
+(Class)layerClass
{
    return [CAGradientLayer class];
}
- (void)defaultsetting
{
    _graduatetype = GraduateTypeLeftToRight;
    _colors = [NSMutableArray arrayWithCapacity:0];
    _locations = [NSMutableArray arrayWithCapacity:0];
}
-(void)setGraduatetype:(GraduateType)graduatetype
{
    CAGradientLayer *layer = (CAGradientLayer *)self.layer;
    switch (graduatetype) {
        case GraduateTypeLeftToRight:
            layer.startPoint = CGPointMake(0, 0);
            layer.endPoint = CGPointMake(1, 0);
            break;
        case GraduateTypeRightToLeft:
            layer.startPoint = CGPointMake(1, 0);
            layer.endPoint = CGPointMake(0, 0);
            break;
        case GraduateTypeLefttopToRightbottom:
            layer.startPoint = CGPointMake(0, 0);
            layer.endPoint = CGPointMake(1, 1);
            break;
        case GraduateTypeRightbottomToLefttop:
            layer.startPoint = CGPointMake(1, 1);
            layer.endPoint = CGPointMake(0, 0);
            break;
        case GraduateTypeLeftbottomToRighttop:
            layer.startPoint = CGPointMake(0, 1);
            layer.endPoint = CGPointMake(1, 0);
            break;
        case GraduateTypeRighttopToLeftbottom:
            layer.startPoint = CGPointMake(1, 0);
            layer.endPoint = CGPointMake(0, 1);
            break;
        case GraduateTypeTopToBottom:
            layer.startPoint = CGPointMake(0, 0);
            layer.endPoint = CGPointMake(0, 1);
            break;
        case GraduateTypeBottomToTop:
            layer.startPoint = CGPointMake(0, 1);
            layer.endPoint = CGPointMake(0, 0);
            break;
        default:
            break;
    }
    _graduatetype = graduatetype;
}
-(void)addgraduatecolor:(Graduatecolor *)color
{
    [_colors addObject:(__bridge UIColor*)color.color.CGColor];
    if (color.location) {
        [_locations addObject:@(color.location)];
        [(CAGradientLayer *)self.layer setLocations:_locations];
    }
    [(CAGradientLayer *)self.layer setColors:_colors];
    
}
@end


@implementation Graduatecolor
-(instancetype)initWithColor:(UIColor *)color Location:(CGFloat)location;
{
    if (self = [super init]) {
        self.color = color;
        self.location = location;
    }
    return self;
}
@end
