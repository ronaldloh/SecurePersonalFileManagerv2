//
//  ImageDetailViewController.m
//  Secure Personal File Manager
//
//  Created by Jan How on 5/5/15.
//  Copyright (c) 2015 Loh Jan How. All rights reserved.
//

#import "ImageDetailViewController.h"

@interface ImageDetailViewController ()

@end

@implementation ImageDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _TitleLabel.text = _DetailModal[0];
    _DescriptionLabel.text = _DetailModal[1];
    _ImageView.image = [UIImage imageNamed:_DetailModal[2]];
    
    self.navigationItem.title = _DetailModal[0];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
