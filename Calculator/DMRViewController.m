//
//  DMRViewController.m
//  Calculator
//
//  Created by Dan Reife on 2/9/13.
//  Copyright (c) 2013 Dan Reife. All rights reserved.
//

#import "DMRViewController.h"

@interface DMRViewController ()

+ (BOOL)isANumber:(NSString *) s;
+ (BOOL)isANZeroNumber:(NSString *) s;
+ (BOOL)isAnOperation:(NSString *) s;
- (NSString *)suffix;
- (NSString *)nextToLast;
- (void)trimZeroes;
- (NSString *)evaluate:(NSString *) equation
                      :(NSString *) operation;

@end

@implementation DMRViewController

    BOOL typed0 = FALSE;

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

+(BOOL)isANumber:(NSString *) s {
    return (![s isEqual:@"+"] &&
            ![s isEqual:@"-"] &&
            ![s isEqual:@"x"] &&
            ![s isEqual:@"÷"] &&
            ![s isEqual:@"%"] &&
            ![s isEqual:@"."]);
}

+(BOOL)isANZeroNumber:(NSString *) s {
    return (![s isEqual:@"+"] &&
            ![s isEqual:@"-"] &&
            ![s isEqual:@"x"] &&
            ![s isEqual:@"÷"] &&
            ![s isEqual:@"%"] &&
            ![s isEqual:@"."] &&
            ![s isEqual:@"0"]);
}

+(BOOL)isAnOperation:(NSString *) s {
    return ([s isEqual:@"+"] ||
            [s isEqual:@"-"] ||
            [s isEqual:@"x"] ||
            [s isEqual:@"÷"] ||
            [s isEqual:@"%"]);
}

-(NSString *)suffix {
    return [self.display.text substringFromIndex:
            [self.display.text length] - 1];
}

-(NSString *)nextToLast {
    if ([self.display.text length] > 1)
        return [self.display.text substringWithRange:(NSMakeRange([self.display.text length] - 2, 1))];
    else return self.display.text;
}

-(void)trimZeroes {
    // Only if it ends in a 0
    if ([self.display.text hasSuffix:@"0"]) {
        int pos = [self.display.text length] - 1;
        while (pos > 1) {
            // If the current position is a 0, look at the next one
            if ([[self.display.text substringWithRange:(NSMakeRange(pos, 1))] isEqual:@"0"]) {
                pos--;
                continue;
            }
            
            // If the current position is a ".",
            // stop here and cut off up to and including here
            else if ([[self.display.text substringWithRange:(NSMakeRange(pos, 1))] isEqual:@"."]) {
                break;
            }
            
            else if ([DMRViewController isANZeroNumber:[self.display.text substringWithRange:(NSMakeRange(pos, 1))]]) {
                pos++;
                break;
            }
        }
        self.display.text = [self.display.text substringToIndex:pos];
    }
    
    else if ([self.display.text hasSuffix:@"."])
        self.display.text = [self.display.text substringToIndex:[self.display.text length] - 1];
}


- (IBAction)button0:(id)sender {
    if (([self.display.text length] < 15) && ![self.display.text isEqual:@"NaN"]) {
        if ([self.display.text isEqual: @"0"])
            typed0 = TRUE;
        else
            self.display.text = [self.display.text stringByAppendingString:@"0"];
    }
}

- (IBAction)button1:(id)sender {
    if (([self.display.text length] < 15) && ![self.display.text isEqual:@"NaN"]) {
        if ([self.display.text isEqual: @"0"] && !typed0)
            self.display.text = @"1";
        else
            self.display.text = [self.display.text stringByAppendingString:@"1"];
    }
}

- (IBAction)button2:(id)sender {
    if (([self.display.text length] < 15) && ![self.display.text isEqual:@"NaN"]) {
        if ([self.display.text isEqual: @"0"] && !typed0)
            self.display.text = @"2";
        else
            self.display.text = [self.display.text stringByAppendingString:@"2"];
    }
}

- (IBAction)button3:(id)sender {
    if (([self.display.text length] < 15) && ![self.display.text isEqual:@"NaN"]) {
        if ([self.display.text isEqual: @"0"] && !typed0)
            self.display.text = @"3";
        else
            self.display.text = [self.display.text stringByAppendingString:@"3"];
    }
}

- (IBAction)button4:(id)sender {
    if (([self.display.text length] < 15) && ![self.display.text isEqual:@"NaN"]) {
        if ([self.display.text isEqual: @"0"] && !typed0)
            self.display.text = @"4";
        else
            self.display.text = [self.display.text stringByAppendingString:@"4"];
    }
}

- (IBAction)button5:(id)sender {
    if (([self.display.text length] < 15) && ![self.display.text isEqual:@"NaN"]) {
        if ([self.display.text isEqual: @"0"] && !typed0)
            self.display.text = @"5";
        else
            self.display.text = [self.display.text stringByAppendingString:@"5"];
    }
}

- (IBAction)button6:(id)sender {
    if (([self.display.text length] < 15) && ![self.display.text isEqual:@"NaN"]) {
        if ([self.display.text isEqual: @"0"] && !typed0)
            self.display.text = @"6";
        else
            self.display.text = [self.display.text stringByAppendingString:@"6"];
    }
}

- (IBAction)button7:(id)sender {
    if (([self.display.text length] < 15) && ![self.display.text isEqual:@"NaN"]) {
        if ([self.display.text isEqual: @"0"] && !typed0)
            self.display.text = @"7";
        else
            self.display.text = [self.display.text stringByAppendingString:@"7"];
    }
}

- (IBAction)button8:(id)sender {
    if (([self.display.text length] < 15) && ![self.display.text isEqual:@"NaN"]) {
        if ([self.display.text isEqual: @"0"] && !typed0)
            self.display.text = @"8";
        else
            self.display.text = [self.display.text stringByAppendingString:@"8"];
    }
}

- (IBAction)button9:(id)sender {
    if (([self.display.text length] < 15) && ![self.display.text isEqual:@"NaN"]) {
        if ([self.display.text isEqual: @"0"] && !typed0)
            self.display.text = @"9";
        else
            self.display.text = [self.display.text stringByAppendingString:@"9"];
    }
}

- (IBAction)decimalButton:(id)sender {
    if (([self.display.text length] < 15) && ![self.display.text isEqual:@"NaN"]) {
        
        
        // Search for which comes last, an operation or a "."
        // Continue the method if an operation is first,
        // return if a decimal point comes first
        int pos = [self.display.text length] - 1;
        bool addPoint = true;
        while (pos > 0) {
            if ([DMRViewController isAnOperation:[self.display.text substringWithRange:(NSMakeRange(pos, 1))]]) break;
            if ([[self.display.text substringWithRange:(NSMakeRange(pos, 1))] isEqual:@"."]) addPoint = false;
            pos--;
                
        }
        if (addPoint)
            self.display.text = [self.display.text stringByAppendingString:@"."];
    }
}


- (IBAction)deleteButton:(id)sender {
    if (![self.display.text isEqual:@"NaN"]) {
        
        // If display has text, remove last character
        if ([self.display.text length] > 1)
            self.display.text = [self.display.text
                substringToIndex:[self.display.text length] - 1];

        // If display is now empty or only had one
        // digit, display a 0
        else {
            self.display.text = @"0";
            typed0 = false;
        }
    }
}
- (IBAction)clearButton:(id)sender {
    self.display.text = @"0";
    typed0 = false;
}

- (IBAction)plusButton:(id)sender {
    if (([self.display.text length] < 15) && ![self.display.text isEqual:@"NaN"]) {
    
        // If the equation ends in a number or it ends in a "."
        // that follows a number, add a "+"
        if ([DMRViewController isANumber:[self suffix]] ||
            ([[self suffix] isEqual:@"."] && [DMRViewController isANumber:[self nextToLast]]))
            self.display.text = [self.display.text stringByAppendingString:@"+"];
    }
}

- (IBAction)minusButton:(id)sender {
    if (([self.display.text length] < 15) && ![self.display.text isEqual:@"NaN"]) {
        
        
        // If it ends in a number, append a "-"
        if ([DMRViewController isANumber:[self suffix]])
            self.display.text = [self.display.text stringByAppendingString:@"-"];
        
        // If it ends in "-" remove the last character
        else if ([[self suffix] isEqual:@"-"]) {
            
            // By taking the substring excluding the last element
            // if there are more characters than just "-"
            if ([self.display.text length] > 1)
                self.display.text = [self.display.text substringToIndex:[self.display.text length] - 1];
            else { // or if just "-", set to default
                self.display.text = @"0";
                typed0 = false;
            }
        }
        
        // If it doesn't end in a number (+ - x ÷ .),
        // check the next to last
        else if (![DMRViewController isANumber:[self suffix]]) {
            // If number precedes the suffix, is valid so add "-"
            if ([DMRViewController isANumber:[self nextToLast]])
                self.display.text = [self.display.text stringByAppendingString:@"-"];
            // If a decimal point precedes a non-number, check
            // before that and append if it's a number
            else if ([[self nextToLast] isEqual:@"."]) {
                NSString *nextNextToLast = [self.display.text substringToIndex:[self.display.text length] - 2];
                if ([DMRViewController isANumber:nextNextToLast])
                    self.display.text = [self.display.text stringByAppendingString:@"-"];
            }
        }
    }
}

- (IBAction)multiplyButton:(id)sender {
    if (([self.display.text length] < 15) && ![self.display.text isEqual:@"NaN"]) {
        
        // If the equation ends in a number or it ends in a "."
        // that follows a number, add a "÷"
        if ([DMRViewController isANumber:[self suffix]] ||
            ([[self suffix] isEqual:@"."] && [DMRViewController isANumber:[self nextToLast]]))
            self.display.text = [self.display.text stringByAppendingString:@"x"];
    }
}


- (IBAction)divideButton:(id)sender {
    if (([self.display.text length] < 15) && ![self.display.text isEqual:@"NaN"]) {
        
        // If the equation ends in a number or it ends in a "."
        // that follows a number, add a "÷"
        if ([DMRViewController isANumber:[self suffix]] ||
            ([[self suffix] isEqual:@"."] && [DMRViewController isANumber:[self nextToLast]]))
            self.display.text = [self.display.text stringByAppendingString:@"÷"];
    }
}

- (IBAction)modButton:(id)sender {
    if (([self.display.text length] < 15) && ![self.display.text isEqual:@"NaN"]) {
        
        // If the equation ends in a number or it ends in a "."
        // that follows a number, add a "%"
        if ([DMRViewController isANumber:[self suffix]] ||
            ([[self suffix] isEqual:@"."] && [DMRViewController isANumber:[self nextToLast]]))
            self.display.text = [self.display.text stringByAppendingString:@"%"];
    }
}

- (NSString *)evaluate:(NSString *)equation
                      :(NSString *)operation {
    
    // Check if there's anything to evaluate
    BOOL isAllDigits = true;
    for (int i = 1; i < [equation length]; i++) {
        if ([DMRViewController isAnOperation:[equation substringWithRange:NSMakeRange(i, 1)]])
            isAllDigits = false;
    }
    if (isAllDigits) return equation;
        
    // Search for the first occurence of the operation,
    // return if it's not there
    NSRange first = [equation rangeOfString:operation];
    if (first.location == NSNotFound) return equation;
    
    NSInteger prevIndex = first.location - 1;
    NSString *prevEq;
    
    // Find the previous operator and from there, the whole number
    while (prevIndex >= 0) {
        prevEq = [equation substringWithRange:NSMakeRange(prevIndex, 1)];
        if ([DMRViewController isAnOperation:prevEq])  break;
        prevIndex--;
    }
    
    // Check one past the first operand
    // to deal with negative numbers
    if (prevIndex > 0)
        if ([DMRViewController isAnOperation:[equation substringWithRange:NSMakeRange(prevIndex - 1, 1)]])
            prevIndex--;

    
    // Ensures prevIndex >= 0 and points to a number,
    // since it will stop pointing to an operation, or at -1
    if (prevIndex != 0) prevIndex++;
    
    // Slice up the number and store as a double
    prevEq = [equation substringWithRange:NSMakeRange(prevIndex, first.location - prevIndex)];
    double prev = [prevEq doubleValue];
    
    // If the operation is followed by a "-", ignore it
    // since that's a negative number
    NSInteger nextIndex = first.location + 1;
    if ([[equation substringWithRange:NSMakeRange(nextIndex, 1)]
         isEqual: @"-"])
        nextIndex++;
    NSString *nextEq;
    
    // Find the next operator, and from there the whole number
    while (nextIndex < [equation length]) {
        nextEq = [equation substringWithRange:NSMakeRange(nextIndex, 1)];
        if ([DMRViewController isAnOperation:nextEq])  break;
        nextIndex++;
    }

    // Ensure nextIndex points at the last part of the number
    // and is less than equation length
    nextIndex--;
    
    // Slice up the equation
    nextEq = [equation substringWithRange:NSMakeRange(first.location + 1, nextIndex - first.location)];
    double next = [nextEq doubleValue];
    
    // Evaluate
    double r;
    if ([operation isEqual:@"+"]) r = prev + next;
    if ([operation isEqual:@"-"]) r = prev - next;
    if ([operation isEqual:@"x"]) r = prev * next;
    if ([operation isEqual:@"÷"]) {
        if (next == 0) return @"NaN";
        else r = prev / next;
    }
    if ([operation isEqual:@"%"]) {
        if (next == 0) return @"NaN";
        else r = fmod(prev, next);
    }
    
    // Insert answer back into the equation
    NSString* result = [NSString stringWithFormat:@"%f",r];
    equation = [[[equation substringToIndex:prevIndex] stringByAppendingString:result]
                stringByAppendingString:[equation substringFromIndex:nextIndex + 1]];
    return [self evaluate:equation:operation];
}


- (IBAction)equalsButton:(id)sender {
    // If it ends in a number or a number followed by a ".",
    // can evaluate
    if ([DMRViewController isANumber:[self suffix]] ||
        ([[self suffix] isEqual:@"."] &&
         [DMRViewController isANumber:[self nextToLast]])) {
        self.display.text = [self evaluate:self.display.text:@"÷"];
        self.display.text = [self evaluate:self.display.text:@"%"];
        self.display.text = [self evaluate:self.display.text:@"x"];
        self.display.text = [self evaluate:self.display.text:@"-"];
        self.display.text = [self evaluate:self.display.text:@"+"];
        [self trimZeroes];
    }
}


@end
