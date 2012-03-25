//
//  ViewController.h
//  PlayGo
//
//  Created by Dirk van Oosterbosch on 25-03-12.
//  Copyright (c) 2012 IR labs. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MapViewController;

@interface ViewController : UIViewController {
    MapViewController *mapViewController;
    
    NSDictionary *trackList;
}

@property (nonatomic, retain) MapViewController *mapViewController;
@property (nonatomic, retain) NSDictionary *trackList;

-(IBAction)startTrackList:(id)sender;

@end
