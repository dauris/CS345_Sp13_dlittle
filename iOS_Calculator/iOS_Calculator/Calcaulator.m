//
//  Calcaulator.m
//  iOS_Calculator
//
//  Created by Dauris Little on 2/20/13.
//  Copyright (c) 2013 Dauris Little. All rights reserved.
//

#import "Calcaulator.h"
#import <UIKit/UIKit.h>

@implementation Calcaulator {
    char q;
}
@synthesize numberOnScreen;
@synthesize numberAccumulated;
@synthesize operationPending;



-(void)pressKey:(char)Q {
    
    q = Q;
    
    switch (Q) {
        case '+':
            Q = @"+";
            break;
        case '-':
            Q = @"-";
            break;
        case '*':
            Q=@"*";
            break;
        case '/':
            Q=@"/";
            break;
        default:
            break;
    }
};
@end
