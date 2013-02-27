//
//  Game.m
//  Bowling Kata
//
//  Created by Dauris Little on 2/26/13.
//  Copyright (c) 2013 CS345. All rights reserved.
//

#import "Game.h"

@implementation Game {
    int rolls[21];
    int currentRoll;
}

-(void)rollWithPinCount:(int)pins {
    rolls[currentRoll ++] = pins;
}

-(int)score {
    int score = 0;
    int ballIndex = 0;
    
    for (int frame = 0; frame < 10; ++frame) {
        if ([self isStrike:ballIndex]) {
            score += 10 + [self strikeBonus:ballIndex];
            ++ballIndex;
        }
        else if ([self isSpare:ballIndex])
        {
            score += 10 + [self spareBound:ballIndex];
            ballIndex += 2;
        }
        else {
            score += [self sumBallsInFrame:ballIndex];
            ballIndex += 2;
        }
    }
    return score;
}

-(BOOL)isStrike: (int)ballIndex {
    return rolls[ballIndex] == 10;
}

-(BOOL)isSpare: (int)ballIndex {
    return rolls[ballIndex] + rolls[ballIndex + 1] == 10;
}

-(int)strikeBonus: (int)ballIndex {
    return rolls[ballIndex +1] + rolls[ballIndex +2];
}

-(int)spareBound: (int)ballIndex {
    return rolls[ballIndex +2];
}

-(int)sumBallsInFrame: (int)ballIndex {
    return rolls[ballIndex] + rolls[ballIndex + 1];
}
@end
