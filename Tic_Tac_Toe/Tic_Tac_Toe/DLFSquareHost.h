//
//  DLFSquareHost.h
//  Tic_Tac_Toe
//
//  Created by Dauris Little on 5/10/13.
//  Copyright (c) 2013 Dauris Little. All rights reserved.
//

#import <Foundation/Foundation.h>
@class DLFSquareSpot;

@protocol DLFSquareHost <NSObject>

- (BOOL)isWho: (NSString *)whichPlayer
legalAtSquare: (DLFSquareSpot *)whichSquare;

- (void)dropPlayer: (NSString *)whichPlayer
        ontoSquare: (DLFSquareSpot *) whichSquare;


@end
