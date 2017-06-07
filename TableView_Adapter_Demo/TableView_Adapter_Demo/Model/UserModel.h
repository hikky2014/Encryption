//
//  UserModel.h
//  TableView_Adapter_Demo
//
//  Created by 崔民浩 on 17/6/8.
//  Copyright © 2017年 MH. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UserModel : NSObject

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *name;

- (instancetype)initWithTitle:(NSString *)title name:(NSString *)name;

@end
