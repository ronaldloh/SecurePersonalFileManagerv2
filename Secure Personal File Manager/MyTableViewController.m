//
//  MyTableViewController.m
//  Secure Personal File Manager
//
//  Created by Jan How on 5/3/15.
//  Copyright (c) 2015 Loh Jan How. All rights reserved.
//

#import "MyTableViewController.h"

@interface MyTableViewController ()

@end

@implementation MyTableViewController

@synthesize webView1, webView2, webView3;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *path1 = [[NSBundle mainBundle] pathForResource:@"DCCS_2" ofType:@".pdf"];
    NSURL *url1 = [NSURL fileURLWithPath:path1];
    NSMutableURLRequest *urlRequest1 = [NSMutableURLRequest requestWithURL:url1];
    [webView1 loadRequest:urlRequest1];
    
    NSString *path2 = [[NSBundle mainBundle] pathForResource:@"DCCS_3" ofType:@".pdf"];
    NSURL *url2 = [NSURL fileURLWithPath:path2];
    NSMutableURLRequest *urlRequest2 = [NSMutableURLRequest requestWithURL:url2];
    [webView2 loadRequest:urlRequest2];
    
    NSString *path3 = [[NSBundle mainBundle] pathForResource:@"DCCS-Assignment v5" ofType:@".pdf"];
    NSURL *url3 = [NSURL fileURLWithPath:path3];
    NSMutableURLRequest *urlRequest3 = [NSMutableURLRequest requestWithURL:url3];
    [webView3 loadRequest:urlRequest3];
    
    

    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    //self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    // Return the number of sections.
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    // Return the number of rows in the section.
    return 0;
}

/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
