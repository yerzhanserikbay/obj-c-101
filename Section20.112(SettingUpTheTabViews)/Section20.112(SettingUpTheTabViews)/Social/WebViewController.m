//
//  WebViewController.m
//  Section20.112(SettingUpTheTabViews)
//
//  Created by YS on 3/30/19.
//  Copyright © 2019 YS. All rights reserved.
//

#import "WebViewController.h"

@interface WebViewController ()

@end

@implementation WebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.navigationItem setTitle: self.detailModal[0]];
    [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:self.detailModal[1]]]];
    
    [self.webView addSubview:self.activityIndicator];
    [self.activityIndicator startAnimating];
    
    self.webView.navigationDelegate = self;
}

- (void)webView:(WKWebView *)webView didFinishNavigation:(WKNavigation *)navigation {
    [self.activityIndicator stopAnimating];
}

- (void)webView:(WKWebView *)webView didCommitNavigation:(WKNavigation *)navigation {
    [self.activityIndicator startAnimating];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)refresh:(id)sender {
    [self.webView reload];
}

- (IBAction)stop:(id)sender {
    [self.webView stopLoading];
}

- (IBAction)back:(id)sender {
    if ([self.webView canGoBack]) {
        [self.webView goBack];
    }
        
}

- (IBAction)next:(id)sender {
    if ([self.webView canGoForward]) {
        [self.webView goForward];
    }
}

@end
