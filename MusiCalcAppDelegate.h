//
//  MusiCalcAppDelegate.h
//  MusiCalc
//
//  Created by James Enciso on 11/18/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface MusiCalcAppDelegate : NSObject <NSApplicationDelegate> {
    NSWindow *window;
	NSTextField *bm;
	NSTextField *m;
	NSTextField *bpm;
	NSTextField *time;
	NSTextField *timeSecondsField;
	
	
}

@property (assign) IBOutlet NSWindow *window;
@property (assign) IBOutlet NSTextField *bm;
@property (assign) IBOutlet NSTextField *m;
@property (assign) IBOutlet NSTextField *bpm;
@property (assign) IBOutlet NSTextField *time;
@property (assign) IBOutlet NSTextField *timeSecondsField;

-(IBAction)calculate:(id)sender;

@end
