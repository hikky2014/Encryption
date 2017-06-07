//
//  UserModel.m
//  TableView_Adapter_Demo
//
//  Created by 崔民浩 on 17/6/8.
//  Copyright © 2017年 MH. All rights reserved.
//

#import "UserModel.h"

@implementation UserModel

- (instancetype)initWithTitle:(NSString *)title name:(NSString *)name {
    self = [super init];
    if(self) {
        _title = title;
        _name = name;
    }
    return self;
}

@end
