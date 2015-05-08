//
//  CommonCryptor.h
//  Secure Personal File Manager
//
//  Created by Jan How on 5/6/15.
//  Copyright (c) 2015 Loh Jan How. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CommonCryptor : NSData

- (NSData *)AES128EncryptedDataWithKey:(NSString *)key;
- (NSData *)AES128DecryptedDataWithKey:(NSString *)key;
- (NSData *)AES128EncryptedDataWithKey:(NSString *)key iv:(NSString *)iv;
- (NSData *)AES128DecryptedDataWithKey:(NSString *)key iv:(NSString *)iv;


@end
