//
//  ChartLayer.h
//  DrawChart
//
//  Created by knmk0002 on 2017/3/15.
//  Copyright © 2017年 knmk0002. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>
#import "ChartView.h"
@interface ChartLayer : CAShapeLayer
- (void)showchartwithpoints:(NSArray <ChartPoint *>*)ponits;
@end
