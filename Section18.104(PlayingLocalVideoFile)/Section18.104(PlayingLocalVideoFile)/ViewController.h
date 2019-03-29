//
//  ViewController.h
//  Section18.104(PlayingLocalVideoFile)
//
//  Created by YS on 3/28/19.
//  Copyright © 2019 YS. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVKit/AVKit.h>
#import <AVFoundation/AVFoundation.h>
#import <WebKit/WebKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet WKWebView *webView;

- (IBAction)playButtonPressed:(id)sender;
- (IBAction)streamVideo:(id)sender;

@end

