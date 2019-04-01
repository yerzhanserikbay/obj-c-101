//
//  ViewController.m
//  Section24.131(ScreenSizeDetection)
//
//  Created by YS on 4/1/19.
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


- (IBAction)buttonPressed:(id)sender {
    float height = [[UIScreen mainScreen] bounds].size.height;
    
    if (height == 812) {
        self.label.text = @"This is the iPhone";
    }
    
    if (height == 735) {
        self.label.text = @"This is the iPhone 6+, 7+, 8+";
    }
    
    if (height == 667) {
        self.label.text = @"This is the iPhone 6, 7, 8";
    }
    
    if (height == 568) {
        self.label.text = @"This is the iPhone 5, SE";
    }
    
    if (height == 480) {
        self.label.text = @"This is the iPhone 4";
    }
    
    
}

@end
