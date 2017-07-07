//
//  InputValidator.m
//  TextField_Check_Strategy
//
//  Created by minhao on 17/6/10.
//  Copyright © 2017年 MH. All rights reserved.
//

#import "InputValidator.h"

static NSString *const InputValidationErrorDomain = @"InputValidationErrorDomain";

@implementation InputValidator

- (BOOL)validateInput:(UITextField *)input error:(NSError **)error {
    NSUInteger numberOfMatches = [self numberOfMatches:input.text];
    BOOL result = [self checkMatches:numberOfMatches error:error];
    return  result;
}

- (NSUInteger)numberOfMatches:(NSString *)text {
    NSRange range = NSMakeRange(0, text.length);
    NSError *regError = nil;
    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:self.pattern options:NSRegularExpressionAnchorsMatchLines error:&regError];
    NSUInteger numberOfMatches = [regex numberOfMatchesInString:text options:NSMatchingAnchored range:range];
    return numberOfMatches;
}

- (BOOL)checkMatches:(NSUInteger)number error:(NSError **)error{
    if(number == 0) {
        if (error != nil) {
            NSString *description = NSLocalizedString(@"Input Validation Failed", @"");
            NSString *reason = NSLocalizedString(self.errorReasonKey, @"");
            NSArray *objArray = [NSArray arrayWithObjects:description, reason, nil];
            NSArray *keyArray = [NSArray arrayWithObjects:NSLocalizedDescriptionKey, NSLocalizedFailureReasonErrorKey, nil];
            
            NSDictionary *userInfo = [NSDictionary dictionaryWithObjects:objArray forKeys:keyArray];
            *error = [NSError errorWithDomain:InputValidationErrorDomain code:self.errorCode userInfo:userInfo];
        }
        return NO;
    }
    return YES;
}



@end
