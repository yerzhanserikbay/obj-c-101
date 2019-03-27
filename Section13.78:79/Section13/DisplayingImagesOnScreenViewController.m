//
//  DisplayingImagesOnScreenViewController.m
//  Section13
//
//  Created by YS on 3/27/19.
//  Copyright © 2019 YS. All rights reserved.
//

#import "DisplayingImagesOnScreenViewController.h"

@interface DisplayingImagesOnScreenViewController ()

@end

@implementation DisplayingImagesOnScreenViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.imageViewOne.image = [UIImage imageNamed:@"dog"];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)showImageButtonPressed:(id)sender {
    self.imageViewTwo.image = [UIImage imageNamed:@"dog"];
}
@end
