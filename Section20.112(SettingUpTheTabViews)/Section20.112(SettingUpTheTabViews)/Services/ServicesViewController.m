//
//  ServicesViewController.m
//  Section20.112(SettingUpTheTabViews)
//
//  Created by YS on 3/29/19.
//  Copyright © 2019 YS. All rights reserved.
//

#import "ServicesViewController.h"

@interface ServicesViewController ()

@end

@implementation ServicesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.label.text = self.detailModel[0];
    self.detailImage.image = [UIImage imageNamed:self.detailModel[1]];
    self.textView.text = self.detailModel[2];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
