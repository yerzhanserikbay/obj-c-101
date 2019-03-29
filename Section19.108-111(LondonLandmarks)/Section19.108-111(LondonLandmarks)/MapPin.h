//
//  MapPin.h
//  Section19.108-111(LondonLandmarks)
//
//  Created by YS on 3/29/19.
//  Copyright © 2019 YS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MapPin : NSObject <MKAnnotation> {
    CLLocationCoordinate2D coordinate;
}

@property (nonatomic, assign) CLLocationCoordinate2D coordinate;

@end

NS_ASSUME_NONNULL_END
