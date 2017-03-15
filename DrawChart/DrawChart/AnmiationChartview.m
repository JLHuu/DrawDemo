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
@end
