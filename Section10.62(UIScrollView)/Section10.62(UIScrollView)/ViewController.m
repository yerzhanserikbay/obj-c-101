//
//  ViewController.m
//  Section10.62(UIScrollView)
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
    
}

- (void)viewDidAppear:(BOOL)animated {
    [self.scrollView setContentSize:CGSizeMake(0, 1500)];
}


@end
