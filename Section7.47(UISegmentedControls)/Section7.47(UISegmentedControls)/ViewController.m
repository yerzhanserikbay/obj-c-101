//
//  ViewController.m
//  Section7.47(UISegmentedControls)
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
    [self segmentedControlAction:nil];
}


- (IBAction)segmentedControlAction:(id)sender {
    switch (self.segmentedControl.selectedSegmentIndex) {
        case 0:
            self.label.text = @"Segment 1 is selected";
            break;
        case 1:
            self.label.text = @"Segment 2 is selected";
            break;
        case 2:
            self.label.text = @"Segment 3 is selected";
            break;
        case 3:
            self.label.text = @"Segment 4 is selected";
            break;
        default:
            break;
    }
}

@end
