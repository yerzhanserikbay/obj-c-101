//
//  ViewController.m
//  Section20.112(SettingUpTheTabViews)
//
//  Created by YS on 3/29/19.
//  Copyright © 2019 YS. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.buttonOne.layer.cornerRadius = 5;
    self.buttonTwo.layer.cornerRadius = 5;
    self.buttonThree.layer.cornerRadius = 5;
    self.buttonFour.layer.cornerRadius = 5;
    self.buttonFive.layer.cornerRadius = 5;
    
    [[self navigationItem] setBackBarButtonItem:[[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStylePlain target:nil action:nil]];
}


- (IBAction)services:(id)sender {
//    [(UITabBarController *) self.tabBarController setSelectedIndex:2];
    [self.tabBarController setSelectedIndex:2];
}

- (IBAction)portfolio:(id)sender {
//    [(UITabBarController *) self.tabBarController setSelectedIndex:3];
    [self.tabBarController setSelectedIndex:3];
}

- (IBAction)aboutus:(id)sender {
//    [(UITabBarController *) self.tabBarController setSelectedIndex:1];
    [self.tabBarController setSelectedIndex:1];
}

- (IBAction)contact:(id)sender {
//    [(UITabBarController *) self.tabBarController setSelectedIndex:4];
    [self.tabBarController setSelectedIndex:4];
}

- (IBAction)social:(id)sender {

}

@end
