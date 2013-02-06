//
//  Game.m
//  Bowling Kata
//
//  Created by Dauris Little on 2/4/13.
//  Copyright (c) 2013 CS345. All rights reserved.
//

#import "Game.h"

@implementation Game {
    int rolls[21];
    int currentRoll;
}

-(void)rollWithPinCount:(int)pins{
    rolls[currentRoll++] = pins;
}

-(int)score {
    int score = 0;
    for (int i = 0; i < 21; ++i)
        score += rolls[i];
    return score;
}
@end
