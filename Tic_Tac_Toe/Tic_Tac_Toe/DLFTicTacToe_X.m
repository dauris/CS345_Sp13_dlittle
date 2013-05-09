//
//  DLFTicTacToe_X.m
//  Tic_Tac_Toe
//
//  Created by Dauris Little on 5/7/13.
//  Copyright (c) 2013 Dauris Little. All rights reserved.
//

#import "DLFTicTacToe_X.h"

@implementation DLFTicTacToe_X

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
    [self setTO_X];
    
    NSImage *associatedImage;
    associatedImage = [NSImage imageNamed:@"joker.png"];
    
    //NSPoint clickSquare = [self convertPoint:[theEvent locationInWindow] fromView:nil];
    
    [super mouseDown:theEvent];
    [self needsDisplay];

}
@end
