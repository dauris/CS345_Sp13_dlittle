//
//  DLFDocument.h
//  Tic_Tac_Toe
//
//  Created by Guest User on 5/6/13.
//  Copyright (c) 2013 Dauris Little. All rights reserved.
//

#import "DLFGameBoard.h"
#import <Cocoa/Cocoa.h>

@interface DLFDocument : NSDocument

@property (weak) IBOutlet DLFGameBoard *ticTacToeBoard;

- (void)popUpGameAlert: (NSString *) winnerName;

@end
