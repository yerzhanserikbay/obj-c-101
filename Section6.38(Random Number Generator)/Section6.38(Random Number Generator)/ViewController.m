//
//  ViewController.m
//  Section6.38(Random Number Generator)
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
}


- (IBAction)randomNumber:(id)sender {
    int randomNum = arc4random() % 101;
    self.labelOne.text = [NSString stringWithFormat:@"%i", randomNum];
}

- (IBAction)randomNumber10to20:(id)sender {
    int minNum = 10;
    int maxNum = 20;
    int randomNum = arc4random_uniform(maxNum - minNum) + minNum;
    self.labelTwo.text = [NSString stringWithFormat:@"%i", randomNum];
}

@end
