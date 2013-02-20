//
//  Calcaulator.h
//  iOS_Calculator
//
//  Created by Dauris Little on 2/20/13.
//  Copyright (c) 2013 Dauris Little. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calcaulator : NSObject

@property NSNumber* numberOnScreen;

@property NSNumber* numberAccumulated;

@property NSString* operationPending;

-(void)pressKey:(char) Q;

@end
