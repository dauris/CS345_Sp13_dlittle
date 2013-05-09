//
//  DLFSquareSpot.h
//  Tic_Tac_Toe
//
//  Created by Dauris Little on 5/9/13.
//  Copyright (c) 2013 Dauris Little. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface DLFSquareSpot : NSImageView

@property (strong) NSString *batOrJoke;

-(void)setToBat;
-(void)setToJoke;
-(void)emptySquare;

@end
