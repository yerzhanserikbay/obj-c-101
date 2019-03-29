//
//  ServicesViewController.h
//  Section20.112(SettingUpTheTabViews)
//
//  Created by YS on 3/29/19.
//  Copyright © 2019 YS. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ServicesViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *detailImage;
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UITextView *textView;

@property (strong, nonatomic) NSArray *detailModel;

@end

NS_ASSUME_NONNULL_END
