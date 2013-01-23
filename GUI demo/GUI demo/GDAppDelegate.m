//
//  GDAppDelegate.m
//  GUI demo
//
//  Created by Guest User on 1/23/13.
//  Copyright (c) 2013 Guest User. All rights reserved.
//

#import "GDAppDelegate.h"

@implementation GDAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
}

- (IBAction)doHello:(id)sender {
    NSString* currentText = nil;
    currentText = [[self theTextField] stringValue];
    currentText=[NSString stringWithFormat:@"Hello, %@", currentText];
    [[self theTextField] setStringValue:currentText];
}

- (IBAction)doGoodbye:(id)sender {
    NSString* newText = nil;
    newText = [[self theTextField] stringValue];
    newText = [NSString stringWithFormat:@"Goodbye, %@", newText];
    [[self theTextField] setStringValue:newText];
}
@end
