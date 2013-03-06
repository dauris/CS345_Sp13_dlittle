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



-(void)pressKey:(char) p {
   
    [self setNumberOnScreen: @(+1)];
    [self setNumberAccumulated:[self numberAccumulated + 2]];
    [self setOperationPending:@"+1"];

}
@end
