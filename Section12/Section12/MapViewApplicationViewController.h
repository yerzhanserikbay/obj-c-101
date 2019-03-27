//
//  MapViewApplicationViewController.h
//  Section12
//
//  Created by YS on 3/27/19.
//  Copyright © 2019 YS. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "MapPin.h"

NS_ASSUME_NONNULL_BEGIN

@interface MapViewApplicationViewController : UIViewController <MKMapViewDelegate, CLLocationManagerDelegate> {
    CLLocationManager *locationManager;
}

@property (weak, nonatomic) IBOutlet MKMapView *mapView;

- (IBAction)standardButtonPressed:(id)sender;
- (IBAction)sateliteButtonPressed:(id)sender;
- (IBAction)hybridButtonPressed:(id)sender;
- (IBAction)locateButtonPressed:(id)sender;
- (IBAction)directionsButtonPressed:(id)sender;

@end

NS_ASSUME_NONNULL_END
