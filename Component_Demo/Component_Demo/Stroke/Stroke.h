//
//  Stroke.h
//  Component_Demo
//
//  Created by minhao on 17/6/26.
//  Copyright © 2017年 MH. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Mark.h"

@interface Stroke : NSObject<Mark>
{
    @private
    UIColor *color_;
    CGFloat size_;
    NSMutableArray *children_;
}


@property (nonatomic, strong) UIColor *color;
@property (nonatomic, assign) CGFloat size;
@property (nonatomic, assign) CGPoint location;
@property (nonatomic, readonly) NSUInteger count;
@property (nonatomic, readonly) id<Mark> lastChild;


@end
