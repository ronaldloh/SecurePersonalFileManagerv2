//
//  RNCryptManager.h
//  CryptPic
//
//  Created by Jan How on 5/9/15.
//  Copyright (c) 2015 Loh Jan How. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CommonCrypto/CommonCryptor.h>
#import <CommonCrypto/CommonKeyDerivation.h>

extern NSString * const kRNCryptManagerErrorDomain;

@interface RNCryptManager : NSObject
+ (BOOL)encryptFromStream:(NSInputStream *)fromStream
                 toStream:(NSOutputStream *)toStream
                 password:(NSString *)password
                    error:(NSError **)error;

+ (BOOL)decryptFromStream:(NSInputStream *)fromStream
                 toStream:(NSOutputStream *)toStream
                 password:(NSString *)password
                    error:(NSError **)error;

+ (NSData *)encryptedDataForData:(NSData *)data
                        password:(NSString *)password
                              iv:(NSData **)iv
                            salt:(NSData **)salt
                           error:(NSError **)error;

+ (NSData *)decryptedDataForData:(NSData *)data
                        password:(NSString *)password 
                              iv:(NSData *)iv
                            salt:(NSData *)salt
                           error:(NSError **)error;
@end
