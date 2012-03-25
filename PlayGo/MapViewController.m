//
//  MapViewController.m
//  PlayGo
//
//  Created by Dirk van Oosterbosch on 25-03-12.
//  Copyright (c) 2012 IR labs. All rights reserved.
//

#import "MapViewController.h"
#import "ViewController.h"

@implementation MapViewController

@synthesize mapView;
@synthesize trackListOwner;
@synthesize titleLabel, trackLabel, totalLabel;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}


- (IBAction)doneButton:(id)sender {
    [self dismissModalViewControllerAnimated:YES];
}


#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    
    // Set title
    NSDictionary *trackDict = [trackListOwner trackList];
    self.title = [NSString stringWithFormat:@"%@'s PlayGo", [trackDict objectForKey:@"creator"]];
    self.titleLabel.title = self.title;
    
    int numOfTracks = [(NSArray *)[trackDict objectForKey:@"playlist"] count];
    NSLog(@"%d tracks", numOfTracks);
    self.totalLabel = [NSString stringWithFormat:@"track %d of %d", 0, numOfTracks];
    
    [mapView setMapType:MKMapTypeStandard];
    [mapView setZoomEnabled:YES];
    [mapView setScrollEnabled:YES];
    MKCoordinateRegion region = { {0.0, 0.0 }, { 0.0, 0.0 } }; 
    region.center.latitude = 52.371;
    region.center.longitude = 4.884;
    region.span.longitudeDelta = 0.01f;
    region.span.latitudeDelta = 0.01f;
    [mapView setRegion:region animated:YES]; 
    
    [mapView setDelegate:self];
    
//    DisplayMap *ann = [[DisplayMap alloc] init]; 
//    ann.title = @" Kolkata";
//    ann.subtitle = @"Mahatma Gandhi Road"; 
//    ann.coordinate = region.center; 
//    [mapView addAnnotation:ann];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
