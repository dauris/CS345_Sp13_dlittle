//
//  DLFSquareSpot.m
//  Tic_Tac_Toe
//
//  Created by Dauris Little on 5/9/13.
//  Copyright (c) 2013 Dauris Little. All rights reserved.
//

#import "DLFSquareSpot.h"

@implementation DLFSquareSpot

- (id)initWithFrame:(NSRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}

- (void)setToBat
{
    [self setBatOrJoke:@"Batman"];
    [self setImage:[NSImage imageNamed:@"batman.png"]];
}

- (void)setToJoke
{
    [self setBatOrJoke:@"Joker"];
    [self setImage:[NSImage imageNamed:@"joker.png"]];
}

- (void)drawRect:(NSRect)dirtyRect
{
    // Drawing code here.
}

@end
