//
//  WebViewController.h
//  Section20.112(SettingUpTheTabViews)
//
//  Created by YS on 3/30/19.
//  Copyright © 2019 YS. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface WebViewController : UIViewController <WKNavigationDelegate>

@property (strong, nonatomic) NSArray *detailModal;

@property (weak, nonatomic) IBOutlet WKWebView *webView;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicator;

- (IBAction)refresh:(id)sender;
- (IBAction)stop:(id)sender;
- (IBAction)back:(id)sender;
- (IBAction)next:(id)sender;


@end

NS_ASSUME_NONNULL_END
