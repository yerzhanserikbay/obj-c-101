//
//  ViewController.m
//  Section9.55(Detecting Shake Gestures)
//
//  Created by YS on 3/26/19.
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

- (void)motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    if (event.subtype == UIEventSubtypeMotionShake) {
        self.label.text = @"The device was shaken not stride";
    }
}


@end
