//
//  DLFDocument.h
//  Tic_Tac_Toe
//
//  Created by Guest User on 5/6/13.
//  Copyright (c) 2013 Dauris Little. All rights reserved.
//

#import "CSTGameModel.h"
#import <Cocoa/Cocoa.h>

@interface DLFDocument : NSDocument

@property (weak) IBOutlet TicTacToeBoard *gameBoard;

@end
