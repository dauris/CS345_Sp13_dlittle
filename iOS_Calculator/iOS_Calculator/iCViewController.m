//
//  iCViewController.m
//  iOS_Calculator
//
//  Created by Dauris Little on 2/8/13.
//  Copyright (c) 2013 Dauris Little. All rights reserved.
//

#import "iCViewController.h"
#import "Calcaulator.h"

@implementation iCViewController{
    //add pointer 
    Calcaulator* _screen;
}
//adjusting for the pointer
- (void)viewDidLoad
{
    [super viewDidLoad];
	NSLog(@"Message %@ recieve by %@", NSStringFromSelector(_cmd), self);
    //added 
    _screen=[[Calcaulator alloc]init];
    
    [[self CalculatorScreen] setNumberOfLines:@"0"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonZero:(id)sender {
    //refactoring
    [self buttonResponse:sender
           actionExcuted:NSStringFromSelector(_cmd)
                 keyText:@"Zero"
                 keyChar:'0'];
    //NSString* keyText=@"Zero";
    //char keyChar ='0';
    //NSString* actionExcuted=NSStringFromSelector(_cmd);
    //NSLog(@"Message %@ recieved by %@ with argument %@", NSStringFromSelector(_cmd), self, sender);
    //[[self CalculatorScreen] setText:keyText];
    //[_screen pressKey:keyChar];
}

- (IBAction)buttonOne:(id)sender {
    //refactoring
    [self buttonResponse:sender
           actionExcuted:NSStringFromSelector(_cmd)
                 keyText:@"One"
                 keyChar:'1'];
}

- (void)buttonResponse:(id)sender
         actionExcuted:(NSString *)actionExcuted
               keyText:(NSString *)keyText
               keyChar:(char)keyChar {
    NSLog(@"Message %@ recieved by %@ with argument %@", actionExcuted, self, sender);
    [[self CalculatorScreen] setText:keyText];
    [_screen pressKey:keyChar];
}

- (IBAction)buttonTwo:(id)sender {
    //refactoring
    NSString* keyText=@"Two";
    char keyChar ='2';
    NSString* actionExcuted=NSStringFromSelector(_cmd);
    [self buttonResponse:sender actionExcuted:actionExcuted keyText:keyText keyChar:keyChar];
}

- (IBAction)buttonThree:(id)sender {
    NSLog(@"Message %@ recieved by %@ with argument %@", NSStringFromSelector(_cmd), self, sender);
    [[self CalculatorScreen] setText:@"Three"];
        [_screen pressKey:'3'];
}

- (IBAction)buttonFour:(id)sender {
    NSLog(@"Message %@ recieved by %@ with argument %@", NSStringFromSelector(_cmd), self, sender);
    [[self CalculatorScreen] setText:@"Four"];
        [_screen pressKey:'5'];
}

- (IBAction)buttonFive:(id)sender {
    NSLog(@"Message %@ recieved by %@ with argument %@", NSStringFromSelector(_cmd), self, sender);
    [[self CalculatorScreen] setText:@"Five"];
    
}

- (IBAction)buttonSix:(id)sender {
    NSLog(@"Message %@ recieved by %@ with argument %@", NSStringFromSelector(_cmd), self, sender);
    [[self CalculatorScreen] setText:@"Six"];
}

- (IBAction)buttonSeven:(id)sender {
    NSLog(@"Message %@ recieved by %@ with argument %@", NSStringFromSelector(_cmd), self, sender);
    [[self CalculatorScreen] setText:@"Seven"];
}

- (IBAction)buttonEight:(id)sender {
    NSLog(@"Message %@ recieved by %@ with argument %@", NSStringFromSelector(_cmd), self, sender);
    [[self CalculatorScreen] setText:@"Eight"];
}

- (IBAction)buttonNine:(id)sender {
    NSLog(@"Message %@ recieved by %@ with argument %@", NSStringFromSelector(_cmd), self, sender);
    [[self CalculatorScreen] setText:@"Nine"];
}

- (IBAction)buttonEqual:(id)sender {
    NSLog(@"Message %@ recieved by %@ with argument %@", NSStringFromSelector(_cmd), self, sender);
    [[self CalculatorScreen] setText:@"Equal"];
}

- (IBAction)buttonAdd:(id)sender {
    NSLog(@"Message %@ recieved by %@ with argument %@", NSStringFromSelector(_cmd), self, sender);
    [[self CalculatorScreen] setText:@"Add"];
}

- (IBAction)buttonSubtract:(id)sender {
    NSLog(@"Message %@ recieved by %@ with argument %@", NSStringFromSelector(_cmd), self, sender);
    [[self CalculatorScreen] setText:@"Subtract"];
}

- (IBAction)buttonMultiply:(id)sender {
    NSLog(@"Message %@ recieved by %@ with argument %@", NSStringFromSelector(_cmd), self, sender);
    [[self CalculatorScreen] setText:@"Multiply"];
}

- (IBAction)buttonDivide:(id)sender {
    NSLog(@"Message %@ recieved by %@ with argument %@", NSStringFromSelector(_cmd), self, sender);
    [[self CalculatorScreen] setText:@"Divide"];
}

- (IBAction)buttonClear:(id)sender {
    NSLog(@"Message %@ recieved by %@ with argument %@", NSStringFromSelector(_cmd), self, sender);
    [[self CalculatorScreen] setText:@"Clear Number"];
}

- (IBAction)buttonAClear:(id)sender {
    NSLog(@"Message %@ recieved by %@ with argument %@", NSStringFromSelector(_cmd), self, sender);
    [[self CalculatorScreen] setText:@"All Clear"];
}

- (IBAction)buttonMod:(id)sender {
    NSLog(@"Message %@ recieved by %@ with argument %@", NSStringFromSelector(_cmd), self, sender);
    [[self CalculatorScreen] setText:@"Mode"];
}

- (IBAction)buttonDecimal:(id)sender {
    NSLog(@"Message %@ recieved by %@ with argument %@", NSStringFromSelector(_cmd), self, sender);
    [[self CalculatorScreen] setText:@"Decimal Inserted"];
}


@end
