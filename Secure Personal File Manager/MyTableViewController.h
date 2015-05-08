//
//  MyTableViewController.h
//  Secure Personal File Manager
//
//  Created by Jan How on 5/3/15.
//  Copyright (c) 2015 Loh Jan How. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyTableViewController : UITableViewController

{
    IBOutlet UIWebView *webView1, *webView2, *webView3;
}

@property (nonatomic, retain) IBOutlet UIWebView *webView1, *webView2, *webView3;

@end
