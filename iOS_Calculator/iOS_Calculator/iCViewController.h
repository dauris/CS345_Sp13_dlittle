//
//  iCViewController.h
//  iOS_Calculator
//
//  Created by Dauris Little on 2/8/13.
//  Copyright (c) 2013 Dauris Little. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface iCViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *CalculatorScreen;

- (IBAction)buttonZero:(id)sender;

- (IBAction)buttonOne:(id)sender;

- (IBAction)buttonTwo:(id)sender;

- (IBAction)buttonThree:(id)sender;

- (IBAction)buttonFour:(id)sender;

- (IBAction)buttonFive:(id)sender;

- (IBAction)buttonSix:(id)sender;

- (IBAction)buttonSeven:(id)sender;

- (IBAction)buttonEight:(id)sender;

- (IBAction)buttonNine:(id)sender;

@end
