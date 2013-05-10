//
//  DLFTicTacToe_X.m
//  Tic_Tac_Toe
//
//  Created by Dauris Little on 5/7/13.
//  Copyright (c) 2013 Dauris Little. All rights reserved.
//

#import "DLFTicTacToe_X.h"

@implementation DLFTicTacToe_X
{
    int _clicker;
}

- (id)initWithFrame:(NSRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setTO_X];
    }
    
return self;
}

- (void) mouseDown:(NSEvent *)theEvent
{
    _clicker += 1;
    
    NSImage *associatedImage;
    associatedImage = [NSImage imageNamed:@"joker.png"];

    if (_clicker / 2) {
        [self setTO_X];
    }
    
    [super mouseDown:theEvent];
    [self needsDisplay];

}
@end
