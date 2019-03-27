//
//  ViewController.m
//  Section13.84(ChangeBackgroundColours)
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


- (IBAction)red:(id)sender {
    self.view.backgroundColor = [UIColor redColor];
}

- (IBAction)blue:(id)sender {
    self.view.backgroundColor = [UIColor blueColor];
}

- (IBAction)green:(id)sender {
    self.view.backgroundColor = [UIColor greenColor];
}

- (IBAction)yellow:(id)sender {
    self.view.backgroundColor = [UIColor yellowColor];
}

- (IBAction)pink:(id)sender {
    self.view.backgroundColor = [UIColor magentaColor];
}

- (IBAction)white:(id)sender {
    self.view.backgroundColor = [UIColor whiteColor];
}

- (IBAction)gray:(id)sender {
    self.view.backgroundColor = [UIColor grayColor];
}

- (IBAction)black:(id)sender {
    self.view.backgroundColor = [UIColor blackColor];
}

- (IBAction)custom1:(id)sender {
    self.view.backgroundColor = [UIColor colorWithRed:50.0/255.0 green:10.0/255.0 blue:100.0/255.0 alpha:1.0];
}

- (IBAction)custom2:(id)sender {
    self.view.backgroundColor = [UIColor colorWithRed:100.0/255.0 green:10.0/255.0 blue:100.0/255.0 alpha:1.0];
}

@end
