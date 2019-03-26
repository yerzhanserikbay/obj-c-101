//
//  ViewController.h
//  Section8.51(Calculator)
//
//  Created by YS on 3/26/19.
//  Copyright © 2019 YS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    int currentOperation;
    
    float result;
    float currentNumber;
}

@property (weak, nonatomic) IBOutlet UILabel *label;

- (IBAction)digitPressed:(id)sender;
- (IBAction)cancelPressed:(id)sender;
- (IBAction)operationPressed:(id)sender;

@end

