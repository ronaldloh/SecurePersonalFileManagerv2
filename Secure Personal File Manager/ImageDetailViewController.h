//
//  ImageDetailViewController.h
//  Secure Personal File Manager
//
//  Created by Jan How on 5/5/15.
//  Copyright (c) 2015 Loh Jan How. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ImageDetailViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *TitleLabel;
@property (strong, nonatomic) IBOutlet UILabel *DescriptionLabel;
@property (strong, nonatomic) IBOutlet UIImageView *ImageView;

@property (strong, nonatomic) NSArray *DetailModal;

@end
