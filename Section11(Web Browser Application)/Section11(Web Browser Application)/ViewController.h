//
//  ViewController.h
//  Section11(Web Browser Application)
//
//  Created by YS on 3/27/19.
//  Copyright © 2019 YS. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>

@interface ViewController : UIViewController <WKNavigationDelegate, UISearchBarDelegate>
@property (weak, nonatomic) IBOutlet WKWebView *webView;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *actInd;
@property (weak, nonatomic) IBOutlet UISearchBar *searchBar;

- (IBAction)stopButtonPressed:(id)sender;
- (IBAction)refreshButtonPressed:(id)sender;
- (IBAction)backButtonPressed:(id)sender;

- (IBAction)nextButtonPressed:(id)sender;

@end

