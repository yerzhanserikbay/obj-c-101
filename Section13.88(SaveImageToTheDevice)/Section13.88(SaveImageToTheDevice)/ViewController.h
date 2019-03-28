//
//  ViewController.h
//  Section13.88(SaveImageToTheDevice)
//
//  Created by YS on 3/28/19.
//  Copyright © 2019 YS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

- (IBAction)imageOne:(id)sender;
- (IBAction)imageTwo:(id)sender;
- (IBAction)imageThree:(id)sender;
- (IBAction)saveimage:(id)sender;


@end

