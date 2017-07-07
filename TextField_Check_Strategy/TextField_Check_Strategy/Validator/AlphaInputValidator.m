//
//  AlphaInputValidator.m
//  TextField_Check_Strategy
//
//  Created by minhao on 17/6/10.
//  Copyright © 2017年 MH. All rights reserved.
//

#import "AlphaInputValidator.h"

@implementation AlphaInputValidator

- (NSString *)pattern {
    return @"^[a-zA-z]*$";
}

- (NSString *)errorReasonKey {
    return @"The input can contain only letters";
}

- (NSInteger)errorCode {
    return 1002;
}

@end
