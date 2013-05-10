//
//  DLFSquareSpot.h
//  Tic_Tac_Toe
//
//  Created by Dauris Little on 5/9/13.
//  Copyright (c) 2013 Dauris Little. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "DLFSquareHost.h"
#import <Foundation/Foundation.h>

@interface DLFSquareSpot : NSImageView

@property (strong) NSString *batOrJoke;

- (void)setToBat;

- (void)setToJoke;

- (void)emptySquare;

- (id)initWithFrame:(NSRect)frameRect
            andHost:(id <DLFSquareHost>) hostingBoard;

@end
