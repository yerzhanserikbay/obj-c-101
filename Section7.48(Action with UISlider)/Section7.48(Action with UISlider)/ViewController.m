//
//  ViewController.m
//  Section7.48(Action with UISlider)
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


- (IBAction)sliderAction:(id)sender {
    [self.label setFont:[UIFont fontWithName:@"Helvetica" size:self.slider.value]];
}

- (IBAction)alphaSliderAction:(id)sender {
    self.label.alpha = self.alphaSlider.value;
}

@end
