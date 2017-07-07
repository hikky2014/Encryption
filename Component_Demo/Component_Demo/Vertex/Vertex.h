//
//  Vertex.h
//  Component_Demo
//
//  Created by minhao on 17/6/26.
//  Copyright © 2017年 MH. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Mark.h"

@interface Vertex : NSObject <Mark>
{
    @protected
    CGPoint location_;
}

@property (nonatomic, strong) UIColor *color;
@property (nonatomic, assign) CGFloat size;
@property (nonatomic, assign) CGPoint location;
@property (nonatomic, readonly) NSUInteger count;
@property (nonatomic, readonly) id<Mark> lastChild;

- (id)initWithLocation:(CGPoint)aLocation;
- (void)addMark:(id<Mark>)mark;
- (void)removeMark:(id<Mark>)mark;
- (id<Mark>)childMarkAtIndex:(NSUInteger)index;

@end
