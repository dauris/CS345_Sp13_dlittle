//
//  DLFTicTacToe_O.m
//  Tic_Tac_Toe
//
//  Created by Dauris Little on 5/7/13.
//  Copyright (c) 2013 Dauris Little. All rights reserved.
//

#import "DLFTicTacToe_O.h"

@implementation DLFTicTacToe_O

- (id)initWithFrame:(NSRect)frameRect
{
    self = [super initWithFrame:frameRect];
    if (self) {
        [self setTo_O];
    }
    return self;
}

- (void)mouseDown:(NSEvent *)theEvent
{
    NSImage *associatedImage;
    associatedImage = [NSImage imageNamed:@"batmanLogo.png"];
    
    //NSPoint clickSquare = [self convertPoint:[theEvent locationInWindow] fromView:nil];
    
    [super mouseDown:theEvent];
    [self needsDisplay];
}
@end
