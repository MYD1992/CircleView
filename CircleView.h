//
//  CircleView.h
//  QiCheng
//
//  Created by lintao on 16/1/12.
//  Copyright © 2016年 Dream. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CircleView : UIView
/**
 *  在View上绘制圆
 *
 *  @param color 圆的颜色
 *  @param value 圆的角度 0~1：(1是完整的圆)
 *  @param width 圆的宽度
 */
-(void)setCircleWithColor:(UIColor *)color value:(CGFloat)value width:(CGFloat) width;
@end
