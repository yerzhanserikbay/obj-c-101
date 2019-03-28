//
//  ViewController.m
//  Section13.88(SaveImageToTheDevice)
//
//  Created by YS on 3/28/19.
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


- (IBAction)imageOne:(id)sender {
    self.imageView.image = [UIImage imageNamed:@"Dog1"];
}

- (IBAction)imageTwo:(id)sender {
    self.imageView.image = [UIImage imageNamed:@"Dog2"];
}

- (IBAction)imageThree:(id)sender {
    self.imageView.image = [UIImage imageNamed:@"Dog3"];
}

- (IBAction)saveimage:(id)sender {
    UIImage *image = self.imageView.image;
    UIImageWriteToSavedPhotosAlbum(image, nil, nil, nil);
}

@end
