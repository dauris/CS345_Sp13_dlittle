//
//  GDAppDelegate.h
//  GUI demo
//
//  Created by Guest User on 1/23/13.
//  Copyright (c) 2013 Guest User. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface GDAppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;

@property (weak) IBOutlet NSTextField *theTextField;

- (IBAction)doHello:(id)sender;

- (IBAction)doGoodbye:(id)sender;



@end
