//
//  ViewController.m
//  Encryption_Strategy_Demo
//
//  Created by Hikky on 17/6/7.
//  Copyright © 2017年 MH. All rights reserved.
//

#import "ViewController.h"
#import "AESEncryption.h"
#import "RSAEncryption.h"
#import "EncryptionContext.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //测试
//    EncryptionContext *context = [[EncryptionContext alloc] initWithEncryption:[[AESEncryption alloc] initWithAlgorithm:kCCAlgorithmAES]];
//    NSString *encrypt =  [context encryptWithData:@"Hello" keyString:@"123456" iv:nil];
//    NSLog(@"encrypt result： %@", encrypt);
//    NSString *decrypt = [context decryptString:encrypt keyString:@"123456" iv:nil];
//    NSLog(@"decrypt result： %@", decrypt);
    
    RSAEncryption *encryption =  [[RSAEncryption alloc] init];

    [encryption loadPublicKey:[[NSBundle mainBundle] pathForResource:@"rsacert" ofType:@"der"]];
    [encryption loadPrivateKey:[[NSBundle mainBundle] pathForResource:@"p" ofType:@"p12"] password:@"123456"];
    
    EncryptionContext *context = [[EncryptionContext alloc] initWithEncryption:encryption];
    NSString *encrypt =  [context encryptWithData:@"Hello" keyString:@"123456" iv:nil];
    NSLog(@"encrypt result： %@", encrypt);
    NSString *decrypt = [context decryptString:encrypt keyString:@"123456" iv:nil];
    NSLog(@"decrypt result： %@", decrypt);
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
