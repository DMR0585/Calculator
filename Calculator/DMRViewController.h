//
//  DMRViewController.h
//  Calculator
//
//  Created by Dan Reife on 2/9/13.
//  Copyright (c) 2013 Dan Reife. All rights reserved.
//

#import <UIKit/UIKit.h>
#include <math.h>

@interface DMRViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *display;

- (IBAction)button0:(id)sender;
- (IBAction)button1:(id)sender;
- (IBAction)button2:(id)sender;
- (IBAction)button3:(id)sender;
- (IBAction)button4:(id)sender;
- (IBAction)button5:(id)sender;
- (IBAction)button6:(id)sender;
- (IBAction)button7:(id)sender;
- (IBAction)button8:(id)sender;
- (IBAction)button9:(id)sender;

- (IBAction)decimalButton:(id)sender;
- (IBAction)deleteButton:(id)sender;
- (IBAction)clearButton:(id)sender;

- (IBAction)plusButton:(id)sender;
- (IBAction)minusButton:(id)sender;
- (IBAction)multiplyButton:(id)sender;
- (IBAction)divideButton:(id)sender;
- (IBAction)modButton:(id)sender;

- (IBAction)equalsButton:(id)sender;


@end
