//
//  ViewController.m
//  Section21.119(SocialSharing)
//
//  Created by YS on 3/30/19.
//  Copyright © 2019 YS. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)sendButtonPressed:(id)sender {
    MFMailComposeViewController *mailComposeVC = [[MFMailComposeViewController alloc] init];
    [mailComposeVC setMailComposeDelegate:self];
    
    if ([MFMailComposeViewController canSendMail]) {
        [mailComposeVC setToRecipients:NULL];
        [mailComposeVC setSubject:@"Chech out this cool app!"];
        [mailComposeVC setMessageBody:self.label.text isHTML:NO];
        
        NSData *data = UIImageJPEGRepresentation(self.imageView.image, 1);
        [mailComposeVC addAttachmentData:data mimeType:@"image/jpeg" fileName:@"image.jpeg"];
        [self presentViewController:mailComposeVC animated:YES completion:nil];
    } else {
        NSLog(@"Can't send mail");
    }
}

- (IBAction)sendMessageAction:(id)sender {
    MFMessageComposeViewController *messageComposeVC = [[MFMessageComposeViewController alloc] init];
    [messageComposeVC setMessageComposeDelegate:self];
    
    if ([MFMessageComposeViewController canSendText]) {
        [messageComposeVC setRecipients:NULL];
        [messageComposeVC setBody:self.label.text];
        
        NSData *data = UIImageJPEGRepresentation(self.imageView.image, 1);
        
        [messageComposeVC addAttachmentData:data typeIdentifier:@"image/jpeg" filename:@"image.jpeg"];
        
        [self presentViewController:messageComposeVC animated:YES completion:nil];
    } else {
        NSLog(@"Can't send text");
    }
}

- (void)mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)messageComposeViewController:(MFMessageComposeViewController *)controller didFinishWithResult:(MessageComposeResult)result {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
