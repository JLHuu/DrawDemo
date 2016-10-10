//
//  GraduateView.h
//  GradualChangeColor
//
//  Created by knmk0002 on 16/10/10.
//  Copyright © 2016年 knmk0002. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger,GraduateType){
    //sap = startpoint, sop = stoppoint
    GraduateTypeLeftToRight = 0,// sap = (0,0),sop = (1,0) || sap = (0,1),sop = (1,1)
    GraduateTypeRightToLeft,
    GraduateTypeLefttopToRightbottom,//sap = (0,0),sop = (1,1)
    GraduateTypeRightbottomToLefttop,
    GraduateTypeLeftbottomToRighttop,//sap = (0,1),sop = (1,0)
    GraduateTypeRighttopToLeftbottom,
};

@interface GraduateView : UIView

@end
