//
//  ViewController.m
//  Section8.53(Temperature Calculator)
//
//  Created by YS on 3/26/19.
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


- (IBAction)convertTextFieldAction:(id)sender {
    if (self.segmentedControl.selectedSegmentIndex == 0) {
        double fahrenheit = [self.field.text doubleValue];
        double celsius = (fahrenheit - 32) / 1.8;
        
        self.outputLabel.text = [NSString stringWithFormat:@"%4.2f Celsius", celsius];
        
        if (celsius > 120) {
            self.image.image = [UIImage imageNamed:@"Temp1"];
        } else if (celsius > 100) {
            self.image.image = [UIImage imageNamed:@"Temp2"];
        } else if (celsius > 80) {
            self.image.image = [UIImage imageNamed:@"Temp3"];
        } else if (celsius > 60) {
            self.image.image = [UIImage imageNamed:@"Temp4"];
        } else if (celsius > 40) {
            self.image.image = [UIImage imageNamed:@"Temp5"];
        } else if (celsius > 20) {
            self.image.image = [UIImage imageNamed:@"Temp6"];
        } else if (celsius > 0) {
            self.image.image = [UIImage imageNamed:@"Temp7"];
        } else if (celsius > -20) {
            self.image.image = [UIImage imageNamed:@"Temp8"];
        } else if (celsius < -20) {
            self.image.image = [UIImage imageNamed:@"Temp9"];
        }
    }
    
    if (self.segmentedControl.selectedSegmentIndex == 1) {
        double celsius = [self.field.text doubleValue];
        double fahrenheit = celsius * 1.8 + 32;
        
        self.outputLabel.text = [NSString stringWithFormat:@"%4.2f Fahrenheit", fahrenheit];
        
        if (fahrenheit > 180) {
            self.image.image = [UIImage imageNamed:@"Temp9"];
        } else if (fahrenheit > 160) {
            self.image.image = [UIImage imageNamed:@"Temp8"];
        } else if (fahrenheit > 140) {
            self.image.image = [UIImage imageNamed:@"Temp7"];
        } else if (fahrenheit > 120) {
            self.image.image = [UIImage imageNamed:@"Temp6"];
        } else if (fahrenheit > 100) {
            self.image.image = [UIImage imageNamed:@"Temp5"];
        } else if (fahrenheit > 80) {
            self.image.image = [UIImage imageNamed:@"Temp4"];
        } else if (fahrenheit > 60) {
            self.image.image = [UIImage imageNamed:@"Temp3"];
        } else if (fahrenheit > 40) {
            self.image.image = [UIImage imageNamed:@"Temp2"];
        } else if (fahrenheit < 40) {
            self.image.image = [UIImage imageNamed:@"Temp1"];
        }
    }
    
    [self resignFirstResponder];
}

- (IBAction)switchAction:(id)sender {
    if (self.segmentedControl.selectedSegmentIndex == 0) {
        self.enter.text = @"Enter Fahrenheit";
        self.field.text = @"";
        self.outputLabel.text = @"0 Celsius";
    }
    
    if (self.segmentedControl.selected == 1) {
        self.enter.text = @"Enter Celsius";
        self.field.text = @"";
        self.outputLabel.text = @"0 Fahrenheit";
    }
}
@end
