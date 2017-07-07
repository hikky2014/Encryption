//
//  ViewController.m
//  TextField_Check_Strategy
//
//  Created by minhao on 17/6/10.
//  Copyright © 2017年 MH. All rights reserved.
//

#import "ViewController.h"
#import "CustomTextField.h"

@interface ViewController ()<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet CustomTextField *numericTextField;
@property (weak, nonatomic) IBOutlet CustomTextField *alphaTextField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

}

- (void)textFieldDidEndEditing:(UITextField *)textField {
    if ([textField isKindOfClass:[CustomTextField class]]) {
        [(CustomTextField *)textField validate];
    }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
