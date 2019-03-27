//
//  ViewController.m
//  Section13.85(Animations)
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
    
    self.imageViewOne.animationImages = [NSArray arrayWithObjects:
                                         [UIImage imageNamed:@"Image1"],
                                         [UIImage imageNamed:@"Image2"],
                                         [UIImage imageNamed:@"Image3"],
                                         [UIImage imageNamed:@"Image4"],
                                         [UIImage imageNamed:@"Image5"],
                                         [UIImage imageNamed:@"Image6"],
                                         [UIImage imageNamed:@"Image7"],
                                         [UIImage imageNamed:@"Image8"], nil];
    
    [self.imageViewOne setAnimationRepeatCount:0];
    self.imageViewOne.animationDuration = 1;
    [self.imageViewOne startAnimating];
    
}


- (IBAction)buttonPressed:(id)sender {
    self.imageViewTwo.animationImages = [NSArray arrayWithObjects:
                                         [UIImage imageNamed:@"Image1"],
                                         [UIImage imageNamed:@"Image2"],
                                         [UIImage imageNamed:@"Image3"],
                                         [UIImage imageNamed:@"Image4"],
                                         [UIImage imageNamed:@"Image5"],
                                         [UIImage imageNamed:@"Image6"],
                                         [UIImage imageNamed:@"Image7"],
                                         [UIImage imageNamed:@"Image8"], nil];
    
    [self.imageViewTwo setAnimationRepeatCount:3];
    self.imageViewTwo.animationDuration = 2;
    [self.imageViewTwo startAnimating];
}

@end
