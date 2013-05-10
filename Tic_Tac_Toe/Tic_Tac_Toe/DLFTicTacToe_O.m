//
//  DLFTicTacToe_O.m
//  Tic_Tac_Toe
//
//  Created by Dauris Little on 5/7/13.
//  Copyright (c) 2013 Dauris Little. All rights reserved.
//

#import "DLFTicTacToe_O.h"

@implementation DLFTicTacToe_O
{
    int _clicker;
}

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
    _clicker += 1;
    NSLog(@"Click %d", _clicker);
    
    if (_clicker / 2) {
        [self setTo_O];
    }
    
    NSImage *associatedImage;
    associatedImage = [NSImage imageNamed:@"batmanLogo.png"];

    
    
    
    [super mouseDown:theEvent];
    [self needsDisplay];
}
@end
