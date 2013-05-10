//
//  DLFSquareSpot.m
//  Tic_Tac_Toe
//
//  Created by Dauris Little on 5/9/13.
//  Copyright (c) 2013 Dauris Little. All rights reserved.
//

#import "DLFSquareSpot.h"

@implementation DLFSquareSpot
{
    id<DLFSquareHost> _gameBoard;
}

- (id)initWithFrame:(NSRect)frame
{
    return [self initWithFrame:frame andHost:nil];
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

- (id)initWithFrame:(NSRect)frameRect andHost:(id)hostingBoard
{
    self = [super initWithFrame:frameRect];
    if (self) {
        _gameBoard = hostingBoard;
        [self emptySquare];
        NSArray *acceptedTypes = @[NSPasteboardTypeString];
        [self registerForDraggedTypes:acceptedTypes];
    }
    return self;
}
@end
