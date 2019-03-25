//
//  ViewController.m
//  Section5.40(Random Word Generator)
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


- (IBAction)randomWord:(id)sender {
    NSArray *words = @[@"Apple", @"Banana", @"Carrot", @"Lemon", @"Tomato"];
    int randomNum = arc4random() % words.count; 
    self.label.text = words[randomNum];
}

@end
