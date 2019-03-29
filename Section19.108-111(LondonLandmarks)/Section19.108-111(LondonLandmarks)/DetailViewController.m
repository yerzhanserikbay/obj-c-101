//
//  DetailViewController.m
//  Section19.108-111(LondonLandmarks)
//
//  Created by YS on 3/29/19.
//  Copyright © 2019 YS. All rights reserved.
//

#import "DetailViewController.h"
#import "MapPin.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.mapView.layer.cornerRadius = 5;
    self.directionsButton.layer.cornerRadius = 5;
    
    self.navigationItem.title = self.detailModal[0];
    self.titleLabel.text = self.detailModal[0];
    self.addressLabel.text = self.detailModal[1];
    self.imageView.image = [UIImage imageNamed:self.detailModal[2]];
    self.descriptionTextView.text = self.detailModal[3];

    MKCoordinateRegion region;
    MKCoordinateSpan span;
    
    span.latitudeDelta = 0.005;
    span.longitudeDelta = 0.005;
    
    CLLocationCoordinate2D location;
    location.latitude = [self.detailModal[4] doubleValue];
    location.longitude = [self.detailModal[5] doubleValue];
    
    region.span = span;
    region.center = location;
    
    [self.mapView setRegion:region animated:YES];
    
    MapPin *ann = [[MapPin alloc] init];
    ann.coordinate = location;
    
    [self.mapView addAnnotation: ann];
    
    
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {

}

- (IBAction)directionsButtonPressed:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[NSString stringWithFormat:@"http://maps.apple.com/?daddr=%@,%@", self.detailModal[4], self.detailModal[5]]] options:@{} completionHandler:nil];
}



@end
