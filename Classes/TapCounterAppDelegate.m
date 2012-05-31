//
//  TapCounterAppDelegate.m
//  TapCounter
//
//  Copyright James Singleton 2010. (unop.co.uk)
//	This work is licensed under a Creative Commons Attribution 3.0 Unported License.
//

#import "TapCounterAppDelegate.h"

@implementation TapCounterAppDelegate

@synthesize window;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
	counter = 0;
	countDisplay.text = @"Tap to start...";
    [window makeKeyAndVisible];
}

-(IBAction)butonWasTapped{
	counter++;
	//countDisplay.text = [NSString stringWithFormat: @"%d",counter];
	if (counter > 1)
		countDisplay.text = [NSString stringWithFormat: @"%2.f Watts",(1/([lastTapTime timeIntervalSinceNow]*-1))*360];
		//countDisplay.text = [NSString stringWithFormat: @"%2.f b.p.m.",(1/([lastTapTime timeIntervalSinceNow]*-1))*60];
	else
		countDisplay.text = @"Tap again...";
	
	lastTapTime = [NSDate date];
	[lastTapTime retain];
	
}


- (void)dealloc {
	[lastTapTime release];
    [window release];
    [super dealloc];
}


@end
