//
//  MusiCalcAppDelegate.m
//  MusiCalc
//
//  Created by James Enciso on 11/18/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "MusiCalcAppDelegate.h"

@implementation MusiCalcAppDelegate

@synthesize window;
@synthesize bm;
@synthesize m;
@synthesize bpm;
@synthesize time;
@synthesize timeSecondsField;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
	// Insert code here to initialize your application 
}

-(IBAction)calculate:(id)sender{

	{float bmv, mv, bpmv;
		float timev;
	
		bmv = [bm intValue];
		mv = [m intValue];
		bpmv = [bpm intValue];
	
		timev = ((bmv * mv) / bpmv);
				
		//[time setFloatValue:timev];
		//[time setStringValue:[NSString stringWithFormat:@"%.5f", timev]];
	
		int minutes = floor(timev);
		int remainingseconds = floor(timev - (minutes * 60));
		NSLog([NSString stringWithFormat:@"%f", remainingseconds]);

		[time setStringValue:[NSString stringWithFormat:@"%i:%0.0f", minutes, remainingseconds]];

		[timeSecondsField setStringValue:[NSString stringWithFormat:@"%.2f", timev * 60.0]];
		
	}
}


@end
