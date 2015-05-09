//
//  CPCryptController.h
//  CryptPic
//
//  Created by Jan How on 5/9/15.
//  Copyright (c) 2015 Loh Jan How. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
  kEncryptionModeDisk = 0,
  kEncryptionModeMemory
} CPEncryptionMode;


@interface CPCryptController : NSObject

+ (CPCryptController *)sharedController;
@property (strong, nonatomic) NSData *encryptedData;
@property (strong, nonatomic) NSData *iv;
@property (strong, nonatomic) NSData *salt;
@property (assign, nonatomic) CPEncryptionMode encryptionMode;

- (BOOL)encryptData:(NSData *)data password:(NSString *)password error:(NSError **)error;
- (NSData *)decryptDataWithPassword:(NSString *)password error:(NSError **)error;
@end
