//
//  Stroke.m
//  Component_Demo
//
//  Created by minhao on 17/6/26.
//  Copyright © 2017年 MH. All rights reserved.
//

#import "Stroke.h"

@implementation Stroke

@synthesize color = color_, size = size_;
@dynamic location;

- (id)init {
    if (self = [super init]) {
        children_ = [[NSMutableArray alloc] initWithCapacity:5];
    }
    return self;
}

- (void)setLocation:(CGPoint)aLocation {
    
}

- (CGPoint)location {
    if ([children_ count]) {
        id<Mark> obj = [children_ firstObject];
        return [obj location];
    }
    
    return CGPointZero;
}

- (void)addMark:(id<Mark>)mark {
    [children_ addObject:mark];
}

- (void)removeMark:(id<Mark>)mark {
    if([children_ containsObject:mark]) {
        [children_ removeObject:mark];
    }else {
        [children_ makeObjectsPerformSelector:@selector(removeMark:) withObject:mark];
    }
}

- (id<Mark>)childMarkAtIndex:(NSUInteger)index {
    if (index >= children_.count) {
        return nil;
    }
    return [children_ objectAtIndex:index];
}

- (id<Mark>)lastChild {
    return [children_ lastObject];
}

- (NSUInteger)count {
    return [children_ count];
}

- (void)acceptMarkVisitor:(id<MarkVisitor>)visitor {
    for (id<Mark> mark in children_) {
        [mark acceptMarkVisitor:visitor];
    }
    
    [visitor visitStroke:self];
}
//- (void)drawWithContext:(CGContextRef)context {
//    CGContextMoveToPoint(context, self.location.x, self.location.y);
//   
//    for (id<Mark> mark in children_) {
//        [mark drawWithContext:context];
//    }
//    
//    CGContextSetStrokeColorWithColor(context, self.color.CGColor);
//    CGContextStrokePath(context);
//}

@end
