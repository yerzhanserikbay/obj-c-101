//
//  ViewController.m
//  Section22.122(AdmobBannersAds)
//
//  Created by YS on 4/1/19.
//  Copyright © 2019 YS. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    // Banner
    self.bannerView.adUnitID = @"ca-app-pub-2339780907141748~5566577056";
    self.bannerView.rootViewController = self;
    
    self.bannerView.adSize = kGADAdSizeSmartBannerPortrait;
    [self.bannerView loadRequest:[GADRequest request]];
    
    self.bannerView.delegate = self;
    self.bannerView.hidden = YES;
    
    self.interstitial = [[GADInterstitial alloc] initWithAdUnitID:@"ca-app-pub-3940256099942544/4411468910"];
    GADRequest *request = [GADRequest request];
    [self.interstitial loadRequest:request];
    
    [[GADRewardBasedVideoAd sharedInstance] loadRequest:[GADRequest request] withAdUnitID:@"ca-app-pub-3940256099942544/1712485313"];
    [GADRewardBasedVideoAd sharedInstance].delegate = self;
}

// Banner
- (void)adViewDidReceiveAd:(GADBannerView *)bannerView {
    self.bannerView.hidden = NO;
}

- (void)adView:(GADBannerView *)bannerView didFailToReceiveAdWithError:(GADRequestError *)error {
    self.bannerView.hidden = NO;
}

// Interstital
- (IBAction)showAd:(id)sender {
    if (self.interstitial.isReady) {
        [self.interstitial presentFromRootViewController:self];
        [self createAD];
    }
}


// Interstitial
- (void)createAD {
    self.interstitial = [[GADInterstitial alloc] initWithAdUnitID:@"ca-app-pub-3940256099942544/4411468910"];
    GADRequest *request = [GADRequest request];
    [self.interstitial loadRequest:request];
}

// Rewarded Ads
- (IBAction)playVideoAdPressed:(id)sender {
    if ([[GADRewardBasedVideoAd sharedInstance] isReady]) {
        [[GADRewardBasedVideoAd sharedInstance] presentFromRootViewController:self];
    }
}

- (void)rewardBasedVideoAdDidClose:(GADRewardBasedVideoAd *)rewardBasedVideoAd {
    [[GADRewardBasedVideoAd sharedInstance] loadRequest:[GADRequest request] withAdUnitID:@"ca-app-pub-3940256099942544/1712485313"];
}

- (void)rewardBasedVideoAd:(GADRewardBasedVideoAd *)rewardBasedVideoAd didRewardUserWithReward:(GADAdReward *)reward {
    score += 100;
    self.label.text = [NSString stringWithFormat:@"%i", score];
}

@end
