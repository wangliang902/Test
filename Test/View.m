//
//  View.m
//  Test
//
//  Created by ios on 14-2-24.
//  Copyright (c) 2014年 ios. All rights reserved.
//

#import "View.h"

@implementation View

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
    CGContextRef con = UIGraphicsGetCurrentContext();
    
    // 绘制一个黑色的垂直黑色线，作为箭头的杆子
    
    CGContextMoveToPoint(con, 100, 100);
    
    CGContextAddLineToPoint(con, 100, 19);
    
    CGContextSetLineWidth(con, 20);
    
    CGContextStrokePath(con);
    
    // 绘制一个红色三角形箭头
    
    CGContextSetFillColorWithColor(con, [[UIColor redColor] CGColor]);
    
    CGContextMoveToPoint(con, 80, 25);
    
    CGContextAddLineToPoint(con, 100, 0);
    
    CGContextAddLineToPoint(con, 120, 25);
    
    CGContextFillPath(con);
    
    // 从箭头杆子上裁掉一个三角形，使用清除混合模式
    
    CGContextMoveToPoint(con, 90, 101);
    
    CGContextAddLineToPoint(con, 100, 90);
    
    CGContextAddLineToPoint(con, 110, 101);
    CGContextSetFillColorWithColor(con, [[UIColor blueColor] CGColor]);
    
//    CGContextSetBlendMode(con, kCGBlendModeClear); 
    
    CGContextFillPath(con);
}

@end
