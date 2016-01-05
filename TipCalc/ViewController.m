//
//  ViewController.m
//  TipCalc
//
//  Created by Richard Martin on 2016-01-05.
//  Copyright © 2016 richard martin. All rights reserved.
//

#import "ViewController.h"
#import "TipCalc.h"

@interface ViewController () <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *amountBeforeTaxTextField;

@property (weak, nonatomic) IBOutlet UITextField *tipPercentageTextField;

@property (weak, nonatomic) IBOutlet UILabel *resultLabel;

@property (strong) TipCalc * tipCalc;

@property (strong) NSArray * textFields;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tipCalc = [[TipCalc alloc] initWithAmountBeforeTax:25.00 andTipPercentage:0.2];
    self.amountBeforeTaxTextField.text = [NSString stringWithFormat:@"%0.2f", self.tipCalc.amountBeforeTax];
    self.tipPercentageTextField.text = [NSString stringWithFormat:@"%0.2f", self.tipCalc.tipPercentage];
    self.textFields = @[self.amountBeforeTaxTextField, self.tipPercentageTextField];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)calcTip {
    
    self.tipCalc.tipPercentage = [self.tipPercentageTextField.text floatValue];
    
    self.tipCalc.amountBeforeTax = [self.amountBeforeTaxTextField.text floatValue];
    
    [self.tipCalc calculateTip];
    
    self.resultLabel.text = [NSString stringWithFormat:@"Your tip: %0.2f.", self.tipCalc.tipAmount];
    
}

- (IBAction)buttonTapped:(id)sender {
    
    self.calcTip;
    
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    int i = [self.textFields indexOfObject:textField];
    
    if (i < [self.textFields count] - 1) {
        UITextField *nextTextField = self.textFields[i+1];
        [nextTextField becomeFirstResponder];
        
    } else {
        [textField resignFirstResponder];
        [self calcTip];
        
    }
    
    return TRUE;
}


@end
