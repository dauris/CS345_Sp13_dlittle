//
//  Game.m
//  Bowling Kata
//
//  Created by Dauris Little on 2/26/13.
//  Copyright (c) 2013 CS345. All rights reserved.
//

#import "Game.h"

@implementation Game {
    int score;
}

-(void)rollWithPinCount:(int)pins {
    score += pins;
}

-(int)score {
    return score;
}


@end
