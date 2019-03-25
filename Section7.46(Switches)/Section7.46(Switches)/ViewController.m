//
//  ViewController.m
//  Section7.46(Switches)
//
//  Created by YS on 3/25/19.
//  Copyright © 2019 YS. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self switchAction:nil];
    [self pressMe:nil];
}

- (IBAction)switchAction:(id)sender {
    if (self.switchOutlet.on) {
        self.button.enabled = YES;
        self.label.text = @"The switch is on";
    } else {
        self.button.enabled = NO;
        self.label.text = @"The switch is off";
    }
}

- (IBAction)pressMe:(id)sender {
    if (self.switchOutlet.on) {
        self.label2.text = @"The content is unlock";
    } else {
        self.label2.text = @"The content is lock";
    }
}

@end
