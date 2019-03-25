//
//  ViewController.h
//  Section6.41(Random Facts)
//
//  Created by YS on 3/25/19.
//  Copyright © 2019 YS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *mainLabel;
@property (weak, nonatomic) IBOutlet UILabel *tapTheBrainLabel;

- (IBAction)brainAction:(id)sender;

@end

