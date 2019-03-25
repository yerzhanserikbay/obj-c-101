//
//  ViewController.h
//  Section7.48(Action with UISlider)
//
//  Created by YS on 3/25/19.
//  Copyright © 2019 YS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UISlider *slider;
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UISlider *alphaSlider;

- (IBAction)sliderAction:(id)sender;
- (IBAction)alphaSliderAction:(id)sender;

@end

