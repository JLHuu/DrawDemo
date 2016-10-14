//
//  GraduateView.h
//  GradualChangeColor
//
//  Created by knmk0002 on 16/10/10.
//  Copyright © 2016年 knmk0002. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Graduatecolor;
typedef NS_ENUM(NSInteger,GraduateType){
    //sap = startpoint, sop = stoppoint
    GraduateTypeLeftToRight = 0,// sap = (0,0),sop = (1,0) || sap = (0,1),sop = (1,1)
    GraduateTypeRightToLeft,
    GraduateTypeLefttopToRightbottom,//sap = (0,0),sop = (1,1)
    GraduateTypeRightbottomToLefttop,
    GraduateTypeLeftbottomToRighttop,//sap = (0,1),sop = (1,0)
    GraduateTypeRighttopToLeftbottom,
    GraduateTypeTopToBottom,// sap=(0,0),sop=(0,1)
    GraduateTypeBottomToTop,
};

@interface GraduateView : UIView
@property(nonatomic,assign)GraduateType graduatetype;// default is GraduateTypeLeftToRight
- (void)addgraduatecolor:(Graduatecolor *)color;
@end

@interface Graduatecolor : NSObject
-(instancetype)initWithColor:(UIColor *)color Location:(CGFloat)location;
@property(nonatomic,strong)UIColor *color;
@property(nonatomic,assign)CGFloat location;// 0~1,
@end
