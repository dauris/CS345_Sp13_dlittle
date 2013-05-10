//
//  DLFGameBoardDelegate.h
//  Tic_Tac_Toe
//
//  Created by Dauris Little on 5/10/13.
//  Copyright (c) 2013 Dauris Little. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol DLFGameBoardDelegate <NSObject>

-(BOOL) isLegalFor:(NSString *) playerSelect
         toMoveAtX:(NSUInteger) x
              andY:(NSUInteger) y;

-(void) executeMoveBy:(NSString*) playerSelect
                  atX:(NSUInteger) x
                 andY:(NSUInteger) y;

-(NSString*) getPlayerSelectedAtX:(NSUInteger) x
                          andY:(NSUInteger) y;
@end
