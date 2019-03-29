//
//  ViewController.m
//  Section18.104(PlayingLocalVideoFile)
//
//  Created by YS on 3/28/19.
//  Copyright © 2019 YS. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.webView loadHTMLString:@"<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/JhdRv3KNHXA\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>" baseURL:nil];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)playButtonPressed:(id)sender {
    NSURL *videoURL = [[NSBundle mainBundle] URLForResource:@"SampleVideo_1280x720_5mb" withExtension:@"mp4"];
    
    AVPlayer *player = [AVPlayer playerWithURL:videoURL];
    
    AVPlayerViewController *playerVC = [[AVPlayerViewController alloc] init];
    playerVC.player = player;
    [player play];
    
    [self presentViewController:playerVC animated:YES completion:nil];
    
    
}

- (IBAction)streamVideo:(id)sender {
    NSURL *videoURL = [NSURL URLWithString:@"Link"];
    
    AVPlayer *player = [AVPlayer playerWithURL:videoURL];
    AVPlayerViewController *playerVC = [[AVPlayerViewController alloc] init];
    playerVC.player = player;
    [player play];
    [self presentViewController:playerVC animated:YES completion:nil];
}

@end
