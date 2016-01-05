//
//  TipCalc.h
//  TipCalc
//
//  Created by Richard Martin on 2016-01-05.
//  Copyright © 2016 richard martin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TipCalc : NSObject

-(id)initWithAmountBeforeTax:(float)amountBeforeTax andTipPercentage:(float)tipPercentage;
-(void)calculateTip;

@property (assign) float amountBeforeTax;
@property (assign) float tipPercentage;
@property (assign, readonly) float tipAmount;


@end
