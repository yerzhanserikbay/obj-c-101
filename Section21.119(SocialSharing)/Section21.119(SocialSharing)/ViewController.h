//
//  ViewController.h
//  Section21.119(SocialSharing)
//
//  Created by YS on 3/30/19.
//  Copyright © 2019 YS. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>
#import <Accounts/Accounts.h>

@interface ViewController : UIViewController <MFMailComposeViewControllerDelegate, MFMessageComposeViewControllerDelegate>

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *label;

- (IBAction)sendButtonPressed:(id)sender;
- (IBAction)sendMessageAction:(id)sender;

@end

