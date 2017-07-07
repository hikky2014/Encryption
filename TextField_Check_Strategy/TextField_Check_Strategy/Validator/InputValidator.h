//
//  InputValidator.h
//  TextField_Check_Strategy
//
//  Created by minhao on 17/6/10.
//  Copyright © 2017年 MH. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface InputValidator : NSObject

@property (nonatomic, strong) NSString  *pattern;
@property (nonatomic, strong) NSString  *errorReasonKey;
@property (nonatomic, assign) NSInteger errorCode;

- (BOOL)validateInput:(UITextField *)input error:(NSError **)error;

@end
