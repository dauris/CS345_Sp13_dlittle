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

- (IBAction)buttonOne:(id)sender {
    NSLog(@"Message %@ recieved by %@ with argument %@", NSStringFromSelector(_cmd), self, sender);
    [[self CalculatorScreen] setText:@"One"];
}

- (IBAction)buttonTwo:(id)sender {
    NSLog(@"Message %@ recieved by %@ with argument %@", NSStringFromSelector(_cmd), self, sender);
    [[self CalculatorScreen] setText:@"Two"];
}

//- (IBAction)buttonThree:(id)sender {
//}

//- (IBAction)buttonFour:(id)sender {
//}

- (IBAction)buttonFive:(id)sender {
    NSLog(@"Message %@ recieved by %@ with argument %@", NSStringFromSelector(_cmd), self, sender);
    [[self CalculatorScreen] setText:@"Five"];
    
}

//- (IBAction)buttonSix:(id)sender {
//}

//- (IBAction)buttonSeven:(id)sender {
//}

//- (IBAction)buttonEight:(id)sender {
//}

//- (IBAction)buttonNine:(id)sender {
//}


@end
