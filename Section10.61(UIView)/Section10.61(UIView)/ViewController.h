//
//  ViewController.h
//  Section10.61(UIView)
//
//  Created by YS on 3/27/19.
//  Copyright © 2019 YS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIView *theView;
- (IBAction)showViewButtonPressed:(id)sender;
- (IBAction)hideViewButtonPressed:(id)sender;

@end

