//
//  CPPasswordViewController.h
//  CryptPic
//
//  Created by Jan How on 5/9/15.
//  Copyright (c) 2015 Loh Jan How. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CPPasswordViewController;

@protocol CPPasswordViewControllerDelegate <NSObject>
- (void)passwordViewController:(CPPasswordViewController *)vc didFinishWithPassword:(NSString *)password;
@end

@interface CPPasswordViewController : UIViewController <UITextFieldDelegate>

@property (strong, nonatomic) IBOutlet UITextField *passwordTextField;
@property (copy, nonatomic) NSString *password;
@property (weak, nonatomic) id<CPPasswordViewControllerDelegate> delegate;
@end
