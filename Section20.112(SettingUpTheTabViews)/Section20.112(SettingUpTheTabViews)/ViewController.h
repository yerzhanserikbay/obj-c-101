//
//  ViewController.h
//  Section20.112(SettingUpTheTabViews)
//
//  Created by YS on 3/29/19.
//  Copyright © 2019 YS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *buttonOne;
@property (weak, nonatomic) IBOutlet UIButton *buttonTwo;
@property (weak, nonatomic) IBOutlet UIButton *buttonThree;
@property (weak, nonatomic) IBOutlet UIButton *buttonFour;
@property (weak, nonatomic) IBOutlet UIButton *buttonFive;

- (IBAction)services:(id)sender;
- (IBAction)portfolio:(id)sender;
- (IBAction)aboutus:(id)sender;
- (IBAction)contact:(id)sender;
- (IBAction)social:(id)sender;

@end

