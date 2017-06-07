//
//  AESEncryption.h
//  Encryption_Strategy_Demo
//
//  Created by 崔民浩 on 17/6/7.
//  Copyright © 2017年 MH. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CommonCrypto/CommonCrypto.h>
#import "IEncryption.h"
//
@interface AESEncryption : NSObject<IEncryption>
- (instancetype)initWithAlgorithm:(uint32_t)algorithm;

@end
