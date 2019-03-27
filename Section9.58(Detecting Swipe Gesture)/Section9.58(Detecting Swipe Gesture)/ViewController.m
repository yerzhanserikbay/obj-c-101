//
//  ViewController.m
//  Section9.58(Detecting Swipe Gesture)
//
//  Created by YS on 3/26/19.
//  Copyright © 2019 YS. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.leftSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleSwipe:)];
    self.rightSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleSwipe:)];
    self.upSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleSwipe:)];
    self.downSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleSwipe:)];
    
    self.leftSwipe.direction = UISwipeGestureRecognizerDirectionLeft;
    self.rightSwipe.direction = UISwipeGestureRecognizerDirectionRight;
    self.upSwipe.direction = UISwipeGestureRecognizerDirectionUp;
    self.downSwipe.direction = UISwipeGestureRecognizerDirectionDown;
    
    [self.view addGestureRecognizer:self.leftSwipe];
    [self.view addGestureRecognizer:self.rightSwipe];
    [self.view addGestureRecognizer:self.upSwipe];
    [self.view addGestureRecognizer:self.downSwipe];
    
}

- (void)handleSwipe:(UISwipeGestureRecognizer *)sender {
    switch (sender.direction) {
        case UISwipeGestureRecognizerDirectionLeft:
            self.label.text = @"Left";
            break;
        case UISwipeGestureRecognizerDirectionRight:
            self.label.text = @"Right";
            break;
        case UISwipeGestureRecognizerDirectionUp:
            self.label.text = @"Up";
            break;
        case UISwipeGestureRecognizerDirectionDown:
            self.label.text = @"Down";
            break;
        default:
            break;
    }
}

@end
