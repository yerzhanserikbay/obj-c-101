//
//  ViewController.m
//  Section23.125-129(InAppPurchases)
//
//  Created by YS on 4/1/19.
//  Copyright © 2019 YS. All rights reserved.
//

#import "ViewController.h"
#define savePurchase @"Save"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSUserDefaults *saveApp = [NSUserDefaults standardUserDefaults];
    bool saved = [saveApp boolForKey:savePurchase];
        
    if (saved) {
        self.levelTwoButton.enabled = YES;
        self.levelTwoButton.alpha = 1.0;

    } else {
        self.levelTwoButton.enabled = NO;
        self.levelTwoButton.alpha = 0.5;

    }
}

- (void)purchased {
    self.levelTwoButton.enabled = YES;
    self.levelTwoButton.alpha = 1.0;
    
    NSUserDefaults *saveApp = [NSUserDefaults standardUserDefaults];
    [saveApp setBool:true forKey:savePurchase];
    [saveApp synchronize];
}


@end
