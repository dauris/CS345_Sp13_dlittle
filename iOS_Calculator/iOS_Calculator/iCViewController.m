//
//  iCViewController.m
//  iOS_Calculator
//
//  Created by Dauris Little on 2/8/13.
//  Copyright (c) 2013 Dauris Little. All rights reserved.
//

#import "iCViewController.h"

@interface iCViewController ()

@end

@implementation iCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonZero:(id)sender {
    NSLog(@"Message %@ recieved by %@ with argument %@", NSStringFromSelector(_cmd), self, sender);
    [[self CalculatorScreen] setText:@"Zero"];
}

- (IBAction)buttonOne:(id)sender {
    NSLog(@"Message %@ recieved by %@ with argument %@", NSStringFromSelector(_cmd), self, sender);
    [[self CalculatorScreen] setText:@"One"];
}

- (IBAction)buttonTwo:(id)sender {
    NSLog(@"Message %@ recieved by %@ with argument %@", NSStringFromSelector(_cmd), self, sender);
    [[self CalculatorScreen] setText:@"Two"];
}

- (IBAction)buttonThree:(id)sender {
    NSLog(@"Message %@ recieved by %@ with argument %@", NSStringFromSelector(_cmd), self, sender);
    [[self CalculatorScreen] setText:@"Three"];
}

- (IBAction)buttonFour:(id)sender {
    NSLog(@"Message %@ recieved by %@ with argument %@", NSStringFromSelector(_cmd), self, sender);
    [[self CalculatorScreen] setText:@"Four"];
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


@end
