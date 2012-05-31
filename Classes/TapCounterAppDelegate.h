//
//  TapCounterAppDelegate.h
//  TapCounter
//
//  Copyright James Singleton 2010. (unop.co.uk)
//	This work is licensed under a Creative Commons Attribution 3.0 Unported License.
//


#import <UIKit/UIKit.h>

@interface TapCounterAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
	IBOutlet UIButton *tapButton;
	IBOutlet UILabel *countDisplay;
	int counter;
	NSDate *lastTapTime;
}

-(IBAction)butonWasTapped;

@property (nonatomic, retain) IBOutlet UIWindow *window;

@end

