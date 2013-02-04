//
//  Game.h
//  Bowling Kata
//
//  Created by Dauris Little on 2/4/13.
//  Copyright (c) 2013 CS345. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Game : NSObject

-(void)rollWithPinCount:(int)pins;

-(int)score;

@end
