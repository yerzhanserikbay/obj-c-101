//
//  ContactViewController.m
//  Section20.112(SettingUpTheTabViews)
//
//  Created by YS on 3/30/19.
//  Copyright © 2019 YS. All rights reserved.
//

#import "ContactViewController.h"
#import "MapPin.h"

@interface ContactViewController ()

@end

@implementation ContactViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.buttonOne.layer.cornerRadius = 5.0;
    self.buttonTwo.layer.cornerRadius = 5.0;
    self.buttonThree.layer.cornerRadius = 5.0;
    self.buttonFour.layer.cornerRadius = 5.0;
    
    MKCoordinateRegion region;
    MKCoordinateSpan span;
    CLLocationCoordinate2D location;
    
    span.latitudeDelta = 0.005;
    span.longitudeDelta = 0.005;
    
    location.latitude = 51.5;
    location.longitude = -0.14;
    
    region.span = span;
    region.center = location;
    
    [self.mapView setRegion:region animated:YES];
    MapPin *ann = [[MapPin alloc] init];
    ann.coordinate = location;
    [self.mapView addAnnotation:ann];
    
    [[self navigationItem] setBackBarButtonItem:[[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStylePlain target:nil action:nil]];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)directions:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http:/maps.apple.com/maps?ddar=51.5,-0.14"] options:@{} completionHandler:nil];
}

- (IBAction)call:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"tel:12312312"] options:@{} completionHandler:nil];
}

@end
