//
//  Vertex.m
//  Component_Demo
//
//  Created by minhao on 17/6/26.
//  Copyright © 2017年 MH. All rights reserved.
//

#import "Vertex.h"

@implementation Vertex
@synthesize location = location_;

- (id)initWithLocation:(CGPoint)aLocation {
    if (self = [super init]) {
        [self setLocation:aLocation];
    }
    
    return self;
}

- (void)setColor:(UIColor *)color{}
- (UIColor *)color { return nil; }
- (void)setSize:(CGFloat)size{}
- (CGFloat)size { return 0; }

- (void)addMark:(id<Mark>)mark {
    
}

- (void)removeMark:(id<Mark>)mark {
    
}

- (id<Mark>)childMarkAtIndex:(NSUInteger)index {
    return nil;
}

- (void)acceptMarkVisitor:(id<MarkVisitor>)visitor {
    [visitor visitVertex:self];
}
//- (void)drawWithContext:(CGContextRef)context {
//    CGFloat x = self.location.x;
//    CGFloat y = self.location.y;
//    
//    CGContextAddLineToPoint(context, x, y);
//}

@end
