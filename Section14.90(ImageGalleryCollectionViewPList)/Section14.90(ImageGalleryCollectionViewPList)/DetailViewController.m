//
//  DetailViewController.m
//  Section14.90(ImageGalleryCollectionViewPList)
//
//  Created by YS on 3/28/19.
//  Copyright © 2019 YS. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = self.detailModal[0];
    
    self.detailTitle.text = self.detailModal[0];
    self.subtitle.text=  self.detailModal[1];
    self.imageView.image = [UIImage imageNamed:self.detailModal[2]];
    self.textView.text = self.detailModal[3];
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
