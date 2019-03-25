//
//  ViewController.m
//  Section7.44
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
    
//    [self buttonTwo:nil]; // button will pressed.
}


- (IBAction)buttonOne:(id)sender {
    self.label.text = @"Button one is pressed";
}

- (IBAction)buttonTwo:(id)sender {
//    self.label.text = @"Button two is pressed";
    [self trigger];
}

- (IBAction)pressWithDelay:(id)sender {
    [self performSelector:@selector(delay) withObject:nil afterDelay:3.0];
    [self performSelector:@selector(delay2) withObject:nil afterDelay:5.0];
}

- (void)delay {
    self.label.text = @"The delay just happened";
}

- (void)delay2 {
    self.label.text = @"The second delay just happened";
}

- (void)trigger {
    self.label.text = @"trigger is pressed";
}

@end
