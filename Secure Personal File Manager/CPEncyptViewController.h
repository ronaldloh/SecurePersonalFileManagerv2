//
//  CPFirstViewController.h
//  CryptPic
//
//  Created by Jan How on 5/9/15.
//  Copyright (c) 2015 Loh Jan How. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CPPasswordViewController.h"

@interface CPEncyptViewController : UIViewController <UIImagePickerControllerDelegate, UINavigationControllerDelegate, CPPasswordViewControllerDelegate>;

@property (strong, nonatomic) IBOutlet UIImageView *imageView;
@property (strong, nonatomic) NSString *password;
@property (strong, nonatomic) IBOutlet UISegmentedControl *modeSegmentedControl;
@property (strong, nonatomic) IBOutlet UIButton *encryptButton;

- (IBAction)selectPicture:(id)sender;
- (IBAction)encrypt:(id)sender;
- (IBAction)changeMode:(id)sender;

@end
