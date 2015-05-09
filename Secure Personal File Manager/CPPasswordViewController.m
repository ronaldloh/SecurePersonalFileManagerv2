//
//  CPPasswordViewController.m
//  CryptPic
//
//  Created by Jan How on 5/9/15.
//  Copyright (c) 2015 Loh Jan How. All rights reserved.
//

#import "CPPasswordViewController.h"

@implementation CPPasswordViewController
@synthesize passwordTextField=passwordTextField_;
@synthesize delegate=delegate_;
@synthesize password=password_;

- (void)viewDidAppear:(BOOL)animated {
  [self.passwordTextField becomeFirstResponder];
  self.passwordTextField.text = self.password;
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
  if ([string isEqualToString:@"\n"]) {
    self.password = self.passwordTextField.text;
    [self.delegate passwordViewController:self didFinishWithPassword:self.password];
      [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
    return NO;
  }
  return YES;
}

@end
