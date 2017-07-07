//
//  Dot.m
//  Component_Demo
//
//  Created by minhao on 17/6/26.
//  Copyright © 2017年 MH. All rights reserved.
//

#import "Dot.h"

@implementation Dot

@synthesize size = size_, color = color_;

- (void)addMark:(id<Mark>)mark {
    
}

- (void)removeMark:(id<Mark>)mark {
    
}

- (id<Mark>)childMarkAtIndex:(NSUInteger)index {
    return nil;
}

- (void)acceptMarkVisitor:(id<MarkVisitor>)visitor {
    [visitor visitDot:self];
}

//- (void)drawWithContext:(CGContextRef)context {
//    CGFloat x = self.location.x;
//    CGFloat y = self.location.y;
//    CGFloat frameSize = self.size;
//    CGRect frame = CGRectMake(x, y, frameSize, frameSize);
//    
//    CGContextSetFillColorWithColor(context, self.color.CGColor);
//    CGContextFillEllipseInRect(context, frame);
//    
//   
//}

@end
