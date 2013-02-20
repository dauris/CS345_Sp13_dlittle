//
//  iCViewController.h
//  iOS_Calculator
//
//  Created by Dauris Little on 2/8/13.
//  Copyright (c) 2013 Dauris Little. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface iCViewController : UIViewController

//Calculator screen
@property (weak, nonatomic) IBOutlet UILabel *CalculatorScreen;

//numbers to be used
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

//All the operations
- (IBAction)buttonEqual:(id)sender;

- (IBAction)buttonAdd:(id)sender;

- (IBAction)buttonSubtract:(id)sender;

- (IBAction)buttonMultiply:(id)sender;

- (IBAction)buttonDivide:(id)sender;

- (IBAction)buttonClear:(id)sender;

- (IBAction)buttonAClear:(id)sender;

- (IBAction)buttonMod:(id)sender;

- (IBAction)buttonDecimal:(id)sender;








@end
