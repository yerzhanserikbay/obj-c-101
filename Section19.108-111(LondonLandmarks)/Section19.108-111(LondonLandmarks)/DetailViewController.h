//
//  DetailViewController.h
//  Section19.108-111(LondonLandmarks)
//
//  Created by YS on 3/29/19.
//  Copyright © 2019 YS. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DetailViewController : UIViewController

@property (strong, nonatomic) NSArray *detailModal;

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *addressLabel;
@property (weak, nonatomic) IBOutlet UITextView *descriptionTextView;
@property (weak, nonatomic) IBOutlet UIButton *directionsButton;
@property (weak, nonatomic) IBOutlet MKMapView *mapView;

- (IBAction)directionsButtonPressed:(id)sender;

@end

NS_ASSUME_NONNULL_END
