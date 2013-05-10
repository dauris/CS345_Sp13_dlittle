//
//  DLFGameBoard.m
//  Tic_Tac_Toe
//
//  Created by Dauris Little on 5/7/13.
//  Copyright (c) 2013 Dauris Little. All rights reserved.
//

#import "DLFGameBoard.h"
#import "CSTLocation.h"
#import "DLFSquareSpot.h"

const int boardSize = 500;
const int gridSquare = 2;
const int gridSize = boardSize/(gridSquare + 1);

@implementation DLFGameBoard
{
    NSMapTable *mapTable;
    NSMutableArray *twoArray;
}

- (id)initWithFrame:(NSRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        mapTable = [NSMapTable mapTableWithKeyOptions:NSPointerFunctionsStrongMemory valueOptions:NSPointerFunctionsStrongMemory];
        
        [self setImage:[NSImage imageNamed:@"gothamCity.png"]];
        
        NSRect DLFRect;
        NSPoint location;
        
        CSTLocation *templocation;
        
        int offset = gridSize/2;
        int numRow = 3;
        int numCol = 3;
        
        for (int x = 0; x < numRow; x += 1) {
            NSMutableArray *temRowArray = nil;
            temRowArray = [NSMutableArray array];
            for (int y = 0; y < numCol; y += 1) {
                location.x = x*gridSize + offset;
                location.y = y*gridSize + offset;
                DLFRect = NSMakeRect(location.x, location.y, gridSize, gridSize);
                
                templocation = [[CSTLocation alloc] initWithX:x andY:y];
            }
            [twoArray addObject:temRowArray];
        }
    }
    return self;
}

-(void) drawRect: (NSRect)dirtyRect
{
    [super drawRect:dirtyRect];
    [self gridDrawn];
}

-(void) gridDrawn
{
    NSPoint startPoint;
    NSPoint endPoint;
    NSBezierPath *path = [NSBezierPath bezierPath];
    
    for (int i = 0; i <= boardSize+gridSize; i+=gridSize) {
        startPoint = NSMakePoint(i, 0);
        endPoint = NSMakePoint(i, boardSize);
        [path moveToPoint:startPoint];
        [path lineToPoint:endPoint];
    }
    
    for (int i = 0; i < boardSize + gridSize; i += gridSize) {
        startPoint = NSMakePoint(0, i);
        endPoint = NSMakePoint(boardSize, i);
        [path moveToPoint:startPoint];
        [path lineToPoint:endPoint];
    }
    
    [[NSColor redColor] set];
    [path setLineWidth:2];
    [path stroke];
}

- (DLFSquareSpot *) squareLocation:(id<CSTInterfaceLocation>)where
{
    return [[twoArray objectAtIndex:[where x]] objectAtIndex:[where y]];
}

- (id <CSTInterfaceLocation>)locationofSquare:(DLFSquareSpot *)whichSquare
{
    return [mapTable objectForKey:whichSquare];
}

- (BOOL)isWho:(NSString *)whichPlayer legalAtSquare:(DLFSquareSpot *)whichSquare
{
    id <CSTInterfaceLocation> where = [self locationofSquare:whichSquare];
    
    return [[self datasource] isLegalFor:whichPlayer toMoveAtX:[where x] andY:[where y]];
}

- (void)dropPlayer:(NSString *)whichPlayer ontoSquare:(DLFSquareSpot *)whichSquare
{
    id <CSTInterfaceLocation> where = [self locationofSquare:whichSquare];
    
    return [[self datasource] executeMoveBy:whichPlayer atX:[where x] andY:[where y]];
}


@end
