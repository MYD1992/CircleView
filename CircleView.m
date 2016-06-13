//
//  CircleView.m
//  QiCheng
//
//  Created by lintao on 16/1/12.
//  Copyright © 2016年 Dream. All rights reserved.
//

#import "CircleView.h"
@interface CircleView()
@property (nonatomic,strong) UIColor * color;
@property (nonatomic,assign) float value;
@property (nonatomic,assign) float width;
@end
@implementation CircleView


- (void)drawRect:(CGRect)rect {
    
    [self drawCircle:rect andValue:_value  color:_color width:_width];
}
-(void)setCircleWithColor:(UIColor *)color value:(CGFloat)value width:(CGFloat) width{
    _color = color;
    _value = value;
    _width = width;
    [self setNeedsDisplay];
}

-(void)drawCircle:(CGRect)rect andValue:(CGFloat)value color:(UIColor *)color width:(CGFloat)width{
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextAddArc(context, CGRectGetWidth(rect) / 2, CGRectGetHeight(rect) / 2, CGRectGetHeight(rect) / 2, -0.5 * M_PI, M_PI *(-0.5 + value * 2), 0);
    CGContextSetLineWidth(context, width);
    [color setStroke];
    CGContextDrawPath(context, kCGPathStroke);
}

@end
