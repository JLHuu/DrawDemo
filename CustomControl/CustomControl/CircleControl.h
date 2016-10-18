//
//  CircleControl.h
//  CustomControl
//
//  Created by knmk0002 on 16/10/18.
//  Copyright © 2016年 knmk0002. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CircleControl : UIControl
@property(nonatomic,assign)NSUInteger radius;
@property(nonatomic,strong)UIColor *circlecolor;
@property(nonatomic,strong)UIColor *circletintcolor;
@property(nonatomic,strong)UIColor *dragColor;
@property(nonatomic,strong)UIColor *dragtintcolor;
@property(nonatomic,assign)NSUInteger dragradius;
@property(nonatomic,assign)NSUInteger circlelinewidth;
@property(nonatomic,assign)CGFloat dragangle;// (0 ~ 2*M_pI)
@end
