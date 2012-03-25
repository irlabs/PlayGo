//
//  MapViewController.h
//  PlayGo
//
//  Created by Dirk van Oosterbosch on 25-03-12.
//  Copyright (c) 2012 IR labs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@class ViewController;

@interface MapViewController : UIViewController <MKMapViewDelegate> {
    IBOutlet MKMapView *mapView;
    IBOutlet UINavigationItem *titleLabel;
    IBOutlet UILabel *trackLabel;
    IBOutlet UILabel *totalLabel;
    
    ViewController *trackListOwner;
}
@property (nonatomic, retain) IBOutlet MKMapView *mapView;
@property (nonatomic, assign) ViewController *trackListOwner;

@property (nonatomic, retain) IBOutlet UINavigationItem *titleLabel;
@property (nonatomic, retain) IBOutlet UILabel *trackLabel;
@property (nonatomic, retain) IBOutlet UILabel *totalLabel;

- (IBAction)doneButton:(id)sender;

@end
