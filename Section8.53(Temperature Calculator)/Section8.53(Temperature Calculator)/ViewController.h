//
//  ViewController.h
//  Section8.53(Temperature Calculator)
//
//  Created by YS on 3/26/19.
//  Copyright © 2019 YS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *field;
@property (weak, nonatomic) IBOutlet UIImageView *image;
@property (weak, nonatomic) IBOutlet UILabel *outputLabel;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;
@property (weak, nonatomic) IBOutlet UILabel *enter;

- (IBAction)convertTextFieldAction:(id)sender;
- (IBAction)switchAction:(id)sender;

@end

