//
//  NumericInputValidator.m
//  TextField_Check_Strategy
//
//  Created by minhao on 17/6/10.
//  Copyright © 2017年 MH. All rights reserved.
//

#import "NumericInputValidator.h"

@implementation NumericInputValidator


- (NSString *)pattern {
    return @"^[0-9]*$";
}

- (NSString *)errorReasonKey {
    return @"The input can contain only numerical values";
}

- (NSInteger)errorCode {
    return 1001;
}

@end
