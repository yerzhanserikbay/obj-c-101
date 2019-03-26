//
//  ViewController.m
//  Section7.49(UIActionSheet)
//
//  Created by YS on 3/25/19.
//  Copyright © 2019 YS. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)buttonAction:(id)sender {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Title" message:@"Message" preferredStyle:UIAlertControllerStyleActionSheet];
    
    UIAlertAction *action1 = [UIAlertAction actionWithTitle:@"Button One" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        self.label.text = @"Button One is pressed";
    }];
    
    UIAlertAction *action2 = [UIAlertAction actionWithTitle:@"Button Two" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        self.label.text = @"Button Two is pressed";
    }];
    
    UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"Dismiss" style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action) {
        [alert dismissViewControllerAnimated:YES completion:nil];
    }];
    
    [alert addAction:action1];
    [alert addAction:action2];
    [alert addAction:cancel];
    
    [self presentViewController:alert animated:YES completion:nil];
}

@end
