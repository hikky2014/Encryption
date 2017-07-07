//
//  MarkVisitor.h
//  Component_Demo
//
//  Created by minhao on 17/6/26.
//  Copyright © 2017年 MH. All rights reserved.
//

//访问者模式
#import <Foundation/Foundation.h>

@protocol Mark;
@class Stroke, Dot, Vertex;

@protocol MarkVisitor <NSObject>

- (void)visitMark:(id<Mark>)mark;
- (void)visitDot:(Dot *)dot;
- (void)visitVertex:(Vertex *)vertex;
- (void)visitStroke:(Stroke *)stroke;

@end
