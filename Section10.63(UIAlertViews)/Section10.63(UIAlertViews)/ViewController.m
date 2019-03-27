//
//  ViewController.m
//  Section10.63(UIAlertViews)
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
}


- (IBAction)action:(id)sender {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Title" message:@"Message" preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *button = [UIAlertAction actionWithTitle:@"Press Me" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        self.label.text = @"Hello";
    }];
    
    UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"Dismiss" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        [alert dismissViewControllerAnimated:YES completion:nil];
    }];
    
    [alert addAction:cancel];
    [alert addAction:button];
    
    [self presentViewController:alert animated:YES completion:nil];
}

@end
