//
//  ViewController.m
//  PlayGo
//
//  Created by Dirk van Oosterbosch on 25-03-12.
//  Copyright (c) 2012 IR labs. All rights reserved.
//

#import "ViewController.h"
#import "MapViewController.h"

@implementation ViewController

@synthesize mapViewController;
@synthesize trackList;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle


-(IBAction)startTrackList:(id)sender {
    NSLog(@"Starting TrackList");
    
    if (mapViewController == nil) {
        MapViewController *newController = [[MapViewController alloc] initWithNibName:@"MapViewController" bundle:nil];
        self.mapViewController = newController;
        [newController release];
        
        // Not loading the plist
        NSURL *plistURL = [[NSBundle mainBundle] URLForResource:@"trackList" withExtension:@"plist"];
        self.trackList = [[NSDictionary alloc] initWithContentsOfURL:plistURL];
        
        self.mapViewController.trackListOwner = self;
        
    }
    [self presentModalViewController:mapViewController animated:YES];
    //[self presentViewController:mapView animated:YES completion:NULL];
    
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
