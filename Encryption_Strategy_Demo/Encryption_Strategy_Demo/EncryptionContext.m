//
//  EncryptionContext.m
//  Encryption_Strategy_Demo
//
//  Created by 崔民浩 on 17/6/7.
//  Copyright © 2017年 MH. All rights reserved.
//

#import "EncryptionContext.h"
#import "IEncryption.h"

@interface EncryptionContext ()

@property (nonatomic) id<IEncryption> encryption;

@end

@implementation EncryptionContext

- (instancetype)initWithEncryption:(id<IEncryption>)encryption {
    self = [super init];
    if(self) {
        _encryption = encryption;
    }
    return self;
}



- (NSString*)encryptWithData:(NSString *)dataStr keyString:(NSString *)keyString iv:(NSData *)iv {
    return [_encryption encryptWithData:dataStr keyString:keyString iv:iv];
}


- (NSString *)decryptString:(NSString *)string keyString:(NSString *)keyString iv:(NSData *)iv {
    return [_encryption decryptString:string keyString:keyString iv:iv];
}
@end
