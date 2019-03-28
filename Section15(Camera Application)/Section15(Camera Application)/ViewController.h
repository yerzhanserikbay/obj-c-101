//
//  ViewController.h
//  Section15(Camera Application)
//
//  Created by YS on 3/28/19.
//  Copyright © 2019 YS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UINavigationControllerDelegate, UIImagePickerControllerDelegate> {
    UIImagePickerController *picker;
    UIImage *image;
}

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

- (IBAction)takePhotoAction:(id)sender;
- (IBAction)choosePhotoAction:(id)sender;
- (IBAction)savePhotoAction:(id)sender;

@end

