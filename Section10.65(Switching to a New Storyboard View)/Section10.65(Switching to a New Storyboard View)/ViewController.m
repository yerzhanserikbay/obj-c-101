//
//  ViewController.m
//  Section10.65(Switching to a New Storyboard View)
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


- (IBAction)switchToXIBAction:(id)sender {
    FourthViewController *fourth = [[FourthViewController alloc] initWithNibName:nil bundle:nil];
    
    fourth.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    [self presentViewController:fourth animated:YES completion:nil];
}
@end
