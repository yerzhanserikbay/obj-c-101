//
//  DisplayingImagesOnScreenViewController.h
//  Section13
//
//  Created by YS on 3/27/19.
//  Copyright © 2019 YS. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DisplayingImagesOnScreenViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *imageViewOne;
@property (weak, nonatomic) IBOutlet UIImageView *imageViewTwo;
- (IBAction)showImageButtonPressed:(id)sender;

@end

NS_ASSUME_NONNULL_END
