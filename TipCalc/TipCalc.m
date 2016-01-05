//
//  TipCalc.m
//  TipCalc
//
//  Created by Richard Martin on 2016-01-05.
//  Copyright © 2016 richard martin. All rights reserved.
//

#import "TipCalc.h"

@implementation TipCalc

-(id)initWithAmountBeforeTax:(float)amountBeforeTax andTipPercentage:(float)tipPercentage {
    if ((self = [super init])) {
        self.amountBeforeTax = amountBeforeTax;
        self.tipPercentage = tipPercentage;
        
    }
    
    return self;
}

-(void)calculateTip {
    _tipAmount = self.amountBeforeTax * self.tipPercentage;
    
}

@end
