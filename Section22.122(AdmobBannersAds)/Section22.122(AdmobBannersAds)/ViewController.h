//
//  ViewController.h
//  Section22.122(AdmobBannersAds)
//
//  Created by YS on 4/1/19.
//  Copyright © 2019 YS. All rights reserved.
//

#import <UIKit/UIKit.h>
@import GoogleMobileAds;

@interface ViewController : UIViewController <GADBannerViewDelegate, GADRewardBasedVideoAdDelegate> {
    int score;
}

@property (weak, nonatomic) IBOutlet GADBannerView *bannerView;

@property (strong, nonatomic) GADInterstitial *interstitial;
@property (weak, nonatomic) IBOutlet UILabel *label;

- (IBAction)showAd:(id)sender;
- (IBAction)playVideoAdPressed:(id)sender;


@end

