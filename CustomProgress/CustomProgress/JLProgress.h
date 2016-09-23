//
//  JLProgress.h
//  CustomProgress
//
//  Created by knmk0002 on 16/9/23.
//  Copyright © 2016年 knmk0002. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JLProgress : UIView
@property(nonatomic,unsafe_unretained)CGFloat progressvalue; // 0~1,default 0
@property(nonatomic,strong)UIColor *pbackgroundcolor;
@property(nonatomic,strong)UIColor *ptintcolor;
@end
