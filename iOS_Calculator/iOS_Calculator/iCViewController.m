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
    [self buttonResponse:sender
           actionExcuted:NSStringFromSelector(_cmd)
                 keyText:@"Two"
                 keyChar:'2'];
}

- (IBAction)buttonThree:(id)sender {
    //refactoring
    [self buttonResponse:sender
           actionExcuted:NSStringFromSelector(_cmd)
                 keyText:@"Three"
                 keyChar:'3'];
}

- (IBAction)buttonFour:(id)sender {
    //refactoring
    [self buttonResponse:sender
           actionExcuted:NSStringFromSelector(_cmd)
                 keyText:@"Four"
                 keyChar:'4'];
}

- (IBAction)buttonFive:(id)sender {
    //refactoring
    [self buttonResponse:sender
           actionExcuted:NSStringFromSelector(_cmd)
                 keyText:@"Five"
                 keyChar:'5'];    
}

- (IBAction)buttonSix:(id)sender {
    //refactoring
    [self buttonResponse:sender
           actionExcuted:NSStringFromSelector(_cmd)
                 keyText:@"Six"
                 keyChar:'6'];
}

- (IBAction)buttonSeven:(id)sender {
    //refactoring
    [self buttonResponse:sender
           actionExcuted:NSStringFromSelector(_cmd)
                 keyText:@"Seven"
                 keyChar:'7'];
}

- (IBAction)buttonEight:(id)sender {
    //refactoring
    [self buttonResponse:sender
           actionExcuted:NSStringFromSelector(_cmd)
                 keyText:@"Eight"
                 keyChar:'8'];
}

- (IBAction)buttonNine:(id)sender {
    //refactoring
    [self buttonResponse:sender
           actionExcuted:NSStringFromSelector(_cmd)
                 keyText:@"Nine"
                 keyChar:'9'];
}

- (IBAction)buttonEqual:(id)sender {
    //refactoring
    [self buttonResponse:sender
           actionExcuted:NSStringFromSelector(_cmd)
                 keyText:@"Equal"
                 keyChar:'='];
}

- (IBAction)buttonAdd:(id)sender {
    //refactoring
    [self buttonResponse:sender
           actionExcuted:NSStringFromSelector(_cmd)
                 keyText:@(+)
                 keyChar:'+'];
}

- (IBAction)buttonSubtract:(id)sender {
    //refactoring
    [self buttonResponse:sender
           actionExcuted:NSStringFromSelector(_cmd)
                 keyText:@(-)
                 keyChar:'-'];
}

- (IBAction)buttonMultiply:(id)sender {
    //refactoring
    [self buttonResponse:sender
           actionExcuted:NSStringFromSelector(_cmd)
                 keyText:@(*)4
                 keyChar:'*'];
}

- (IBAction)buttonDivide:(id)sender {
    //refactoring
    [self buttonResponse:sender
           actionExcuted:NSStringFromSelector(_cmd)
                 keyText:@(/)
                 keyChar:'/'];
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

}

- (IBAction)buttonDecimal:(id)sender {
    [self buttonResponse:sender
           actionExcuted:NSStringFromSelector(_cmd)
                 keyText:@"Decimal"
                 keyChar:'.'];
}


@end
