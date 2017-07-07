//
//  CustomTextField.m
//  TextField_Check_Strategy
//
//  Created by minhao on 17/6/10.
//  Copyright © 2017年 MH. All rights reserved.
//

#import "CustomTextField.h"

@implementation CustomTextField

- (BOOL)validate {
    NSError *error = nil;
    BOOL validateionResult = [_inputValidator validateInput:self error:&error];
    if (!validateionResult) {
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:[error localizedDescription] message:[error localizedFailureReason] delegate:nil cancelButtonTitle:NSLocalizedString(@"OK", @"") otherButtonTitles:nil];
        [alertView show];
    }
    
    return validateionResult;
}

@end
