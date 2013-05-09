//
//  DLFGameBoard.h
//  Tic_Tac_Toe
//
//  Created by Dauris Little on 5/7/13.
//  Copyright (c) 2013 Dauris Little. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "CSTInterfaceGameModel.h"
@interface DLFGameBoard : NSImageView

- (void) gridDrawn;

@property (readwrite, weak) IBOutlet id<CSTInterfaceGameModel> dataSurce;

@end
