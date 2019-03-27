//
//  ViewController.m
//  Section11(Web Browser Application)
//
//  Created by YS on 3/27/19.
//  Copyright © 2019 YS. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.google.com"]]];
    
    [self.webView addSubview:self.actInd];
    
    [self.actInd startAnimating];
    
    self.webView.navigationDelegate = self;
    self.searchBar.delegate = self;
}


- (void)webView:(WKWebView *)webView didCommitNavigation:(WKNavigation *)navigation {
    [self.actInd startAnimating];
}

- (void)webView:(WKWebView *)webView didFinishNavigation:(WKNavigation *)navigation {
    [self.actInd stopAnimating];
}

- (IBAction)stopButtonPressed:(id)sender {
    [self.webView stopLoading];
}

- (IBAction)refreshButtonPressed:(id)sender {
    [self.webView reload];
}

- (IBAction)backButtonPressed:(id)sender {
    if ([self.webView canGoBack]) {
        [self.webView goBack];
    }
}

- (IBAction)nextButtonPressed:(id)sender {
    if ([self.webView canGoForward]) {
        [self.webView canGoForward];
    }
}

- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar {
    [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"http://%@", self.searchBar.text]]]];
    
    [searchBar resignFirstResponder];
}

@end
