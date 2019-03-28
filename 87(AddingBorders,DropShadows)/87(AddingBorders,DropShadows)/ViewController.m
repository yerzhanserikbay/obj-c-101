//
//  ViewController.m
//  87(AddingBorders,DropShadows)
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
    
    [[self.imageViewOne layer] setBorderColor:[UIColor redColor].CGColor];
//    [self.imageViewOne.layer setBorderColor:[UIColor redColor].CGColor];
    [[self.imageViewOne layer] setBorderWidth:10.0f];
//    [self.imageViewOne.layer setBorderWidth:10.0f];
    [[self.imageViewOne layer] setCornerRadius:20.0f];
//    [self.imageViewOne.layer setCornerRadius:20.0f];
    [[self.imageViewOne layer] setMasksToBounds:YES];
//    [self.imageViewOne.layer setMasksToBounds:YES];
    
    [[self.imageViewTwo layer] setShadowColor:[[UIColor blackColor] CGColor]];
    [[self.imageViewTwo layer] setShadowOpacity:0.5f];
    [[self.imageViewTwo layer] setShadowRadius:5.0f];
    [[self.imageViewTwo layer] setShadowOffset:CGSizeMake(5, 5)];
}


@end
