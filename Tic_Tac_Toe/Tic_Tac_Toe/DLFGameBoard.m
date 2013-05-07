//
//  DLFGameBoard.m
//  Tic_Tac_Toe
//
//  Created by Dauris Little on 5/7/13.
//  Copyright (c) 2013 Dauris Little. All rights reserved.
//

#import "DLFGameBoard.h"


const int boardSize = 500;
const int gridSquare = 9;
const int gridSize = boardSize/(gridSquare + 1);
@implementation DLFGameBoard
-(void) drawRect: (NSRect)dirtyRect
{
    [super drawRect:dirtyRect];
    [self gridDrawn];
}

-(void) gridDrawn
{
    NSPoint startPoint;
    NSPoint endPoint;
    NSBezierPath *path = [NSBezierPath];
    
    for (int i = 0; i <= boardSize+gridSize; i+=gridSize) {
        startPoint = NSMakePoint(i, 0);
        endPoint = NSMakePoint(i, boardSize);
        [path moveToPoint:startPoint];
        [path lineToPoint:endPoint];
    }
    
    [[NSColor blackColor] set];
    [path setLineWidth:2];
    [path stroke];
}
@end
