//
//  AboutViewController.h
//  Section20.112(SettingUpTheTabViews)
//
//  Created by YS on 3/29/19.
//  Copyright © 2019 YS. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface AboutViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *button;
- (IBAction)contact:(id)sender;

@end

NS_ASSUME_NONNULL_END
