//
//  ViewController.m
//  Section21.121(PhoneCall)
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


- (IBAction)phoneCall:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"tel:+8615652769696"] options:@{} completionHandler:nil];
}

@end
