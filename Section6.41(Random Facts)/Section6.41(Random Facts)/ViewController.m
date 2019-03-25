//
//  ViewController.m
//  Section6.41(Random Facts)
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


- (IBAction)brainAction:(id)sender {
    NSArray *facts = @[@"The 100 folds in a chef's toque are said to represent 100 ways to cook an egg.",
                       @"Since founding the Imagination Library in 1995, Dolly Parton has donated 100 million books to children.",
                       @"Guinness estimates that 93,000 liters of beer are lost in facial hair each year in the UK alone.",
                       @"Some cats are allergic to humans.",
                       @"Queen Elizabeth II is a trained mechanic.",];
    
    int randomInt = arc4random() % facts.count;
    self.tapTheBrainLabel.text = facts[randomInt];
    
}

@end
