//
//  CustomTextField.h
//  TextField_Check_Strategy
//
//  Created by minhao on 17/6/10.
//  Copyright © 2017年 MH. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "InputValidator.h"

@interface CustomTextField : UITextField

@property (nonatomic, weak) IBOutlet InputValidator *inputValidator;

- (BOOL)validate;

@end
