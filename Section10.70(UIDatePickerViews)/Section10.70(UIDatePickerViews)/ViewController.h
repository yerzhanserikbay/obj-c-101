//
//  ViewController.h
//  Section10.70(UIDatePickerViews)
//
//  Created by YS on 3/27/19.
//  Copyright © 2019 YS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;

- (IBAction)selectDate:(id)sender;

@end

