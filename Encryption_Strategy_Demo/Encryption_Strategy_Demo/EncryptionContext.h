//
//  EncryptionContext.h
//  Encryption_Strategy_Demo
//
//  Created by 崔民浩 on 17/6/7.
//  Copyright © 2017年 MH. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IEncryption.h"

@interface EncryptionContext : NSObject

- (instancetype)initWithEncryption:(id<IEncryption>)encryption;

- (NSString*)encryptWithData:(NSString *)dataStr keyString:(NSString *)keyString iv:(NSData *)iv;
- (NSString *)decryptString:(NSString *)string keyString:(NSString *)keyString iv:(NSData *)iv;


@end
