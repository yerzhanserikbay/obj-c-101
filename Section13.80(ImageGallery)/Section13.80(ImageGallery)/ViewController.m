//
//  ViewController.m
//  Section13.80(ImageGallery)
//
//  Created by YS on 3/27/19.
//  Copyright © 2019 YS. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    imageInt = 1;
    [self imageGallery];
}


- (IBAction)backButtonPressed:(id)sender {
    imageInt -= 1;
    [self imageGallery];
}

- (IBAction)nextButtonPressed:(id)sender {
    imageInt += 1;
    [self imageGallery];
}

- (void)imageGallery {
    self.pagesLabel.text = [NSString stringWithFormat:@"%i/6", imageInt];
    self.imageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"Image%i", imageInt]];
    
    if (imageInt == 1) {
        self.backButton.enabled = NO;
        self.backButton.alpha = 0.25;
    } else if (imageInt == 6) {
        self.nextButton.enabled = NO;
        self.nextButton.alpha = 0.25;
    } else {
        self.backButton.enabled = YES;
        self.backButton.alpha = 1.0;
        self.nextButton.enabled = YES;
        self.nextButton.alpha = 1.0;
    }
}

@end
