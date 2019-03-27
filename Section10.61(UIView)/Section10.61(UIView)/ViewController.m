//
//  ViewController.m
//  Section10.61(UIView)
//
//  Created by YS on 3/27/19.
//  Copyright © 2019 YS. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.theView.hidden = YES;
}


- (IBAction)showViewButtonPressed:(id)sender {
    self.theView.hidden = NO;
}

- (IBAction)hideViewButtonPressed:(id)sender {
    self.theView.hidden = YES;
}

@end
