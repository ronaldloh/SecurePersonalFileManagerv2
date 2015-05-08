//
//  ImageTableViewController.h
//  Secure Personal File Manager
//
//  Created by Jan How on 5/5/15.
//  Copyright (c) 2015 Loh Jan How. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ImageTableViewController : UITableViewController

@property (nonatomic, strong) NSArray *Image;
@property (nonatomic, strong) NSArray *Title;
@property (nonatomic, strong) NSArray *Description;

@end
