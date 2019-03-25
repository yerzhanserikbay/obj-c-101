//
//  ViewController.m
//  Section6.39(Roll of a Dice)
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


- (IBAction)rollAction:(id)sender {
    int min = 1;
    int max = 7;
    
    int randomNum = arc4random_uniform(max - min) + min;
    self.label.text = [NSString stringWithFormat:@"Rolled a %i", randomNum];
    self.imageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"Dice%i", randomNum]];
}

@end
