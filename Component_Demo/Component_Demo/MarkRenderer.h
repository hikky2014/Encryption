//
//  MarkRenderer.h
//  Component_Demo
//
//  Created by minhao on 17/6/26.
//  Copyright © 2017年 MH. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MarkVisitor.h"
#import "Dot.h"
#import "Stroke.h"
#import "Vertex.h"

@interface MarkRenderer : NSObject<MarkVisitor>
{
    @private
    BOOL shouldMoveContextToDot_;
    
    @protected
    CGContextRef context_;
}

- (id)initWithContext:(CGContextRef)context;

- (void)visitMark:(id<Mark>)mark;
- (void)visitDot:(Dot *)dot;
- (void)visitVertex:(Vertex *)vertex;
- (void)visitStroke:(Stroke *)stroke;

@end
