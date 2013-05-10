//
//  DLFGameBoard.h
//  Tic_Tac_Toe
//
//  Created by Dauris Little on 5/7/13.
//  Copyright (c) 2013 Dauris Little. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "CSTInterfaceLocation.h"
#import "DLFSquareHost.h"
#import "DLFGameBoardDelegate.h"

@interface DLFGameBoard : NSImageView <DLFSquareHost>

- (void) gridDrawn;

- (DLFSquareSpot *)squareLocation: (id<CSTInterfaceLocation>) where;

- (id <CSTInterfaceLocation>)locationofSquare: (DLFSquareSpot *) whichSquare;

@property (readwrite, weak) IBOutlet id <DLFGameBoardDelegate> datasource;

@end
