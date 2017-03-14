//
//  ChartView.h
//  DrawChart
//
//  Created by knmk0002 on 2017/3/14.
//  Copyright © 2017年 knmk0002. All rights reserved.
//

#import <UIKit/UIKit.h>
@interface ChartPoint : NSObject
@property (nonatomic,readonly)CGPoint point;
- (instancetype)initWithpoint:(CGPoint)point;
@end

@interface ChartView : UIView
- (void)showchartwithpoints:(NSArray <ChartPoint *>*)ponits;
@end
