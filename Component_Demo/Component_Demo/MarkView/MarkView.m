//
//  MarkView.m
//  Component_Demo
//
//  Created by minhao on 17/6/26.
//  Copyright © 2017年 MH. All rights reserved.
//

#import "MarkView.h"
#import "Stroke.h"
#import "Dot.h"
#import "Vertex.h"
#import "MarkRenderer.h"
@implementation MarkView

- (id)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor whiteColor];
    }
    return self;
}
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    Dot *newDot = [[Dot alloc] init];
    Dot *newDot1 = [[Dot alloc] init];
    Vertex *newVertex = [[Vertex alloc] init];
    Vertex *newVertex1 = [[Vertex alloc] init];
    Stroke *parentStroke = [[Stroke alloc] init];
    
    newDot.location = CGPointMake(50, 100);
    newDot.size = 20;
    newDot.color = [UIColor greenColor];
    
    newDot1.location = CGPointMake(100, 200);
    newDot1.size = 20;
    newDot1.color = [UIColor greenColor];
    
    newVertex.location = CGPointMake(60, 140);
    newVertex1.location = CGPointMake(150, 300);
    
    parentStroke.color = [UIColor redColor];
    parentStroke.location = CGPointMake(100, 100);
    [parentStroke addMark:newDot];
    [parentStroke addMark:newDot1];
//    Stroke *newStroke = [[Stroke alloc] init];
//    newStroke.color = [UIColor redColor];
//    newStroke.location = CGPointMake(30, 100);
    
//    [newStroke addMark:newVertex];
    [parentStroke addMark:newVertex];
    [parentStroke addMark:newVertex1];
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    
//    [parentStroke drawWithContext:context];
    MarkRenderer *markRenderer = [[MarkRenderer alloc] initWithContext:context];
    [parentStroke acceptMarkVisitor:markRenderer];
}


@end
