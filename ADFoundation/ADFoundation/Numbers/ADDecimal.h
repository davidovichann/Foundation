//
//  ADDecimal.h
//  ADFoundation
//
//  Created by Анна on 21.08.2018.
//  Copyright © 2018 ad. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ADDecimal : NSObject

#pragma mark - Creating a Decimal from another Decimal
+ (void)setDecimalNumber:(NSDecimal *)decimalValue fromAnotherDecimalNumber:(NSDecimal *)anotherDecimalNumber;

#pragma mark - Converting between Decimals and Strings
+ (NSString *)stringRepresentationForDecimalValue:(NSDecimal *)decimalValue withLocale:(id)locale;

#pragma mark - Performing Arithmetic Using References
+ (void)makeCompactDecimalNumber:(NSDecimal *)decimal;

+ (NSDecimal *)addLeftOperand:(NSDecimal *)leftOperand toRightOperand:(NSDecimal *)rightOperand withRoundingMode:(NSRoundingMode)roundingMode;
+ (NSDecimal *)substractRightOperand:(NSDecimal *)rightOperand fromLeft:(NSDecimal *)leftOperand withRoundingMode:(NSRoundingMode)roundingMode;
+ (NSDecimal *)divideLeftOperand:(NSDecimal *)leftOperand byRight:(NSDecimal *)rightOperand withRoundingMode:(NSRoundingMode)roundingMode;
+ (NSDecimal *)multiplyLeftOperand:(NSDecimal *)leftOperand toRight:(NSDecimal *)rightOperand withRoundingMode:(NSRoundingMode)roundingMode;
+ (NSDecimal *)mulyiplyByPower10Number:(NSDecimal *)number withPower:(short)power withRoundingMode:(NSRoundingMode)roundingMode;
+ (NSDecimal *)roundNumber:(NSDecimal *)number withScale:(NSInteger)scale roundingMode:(NSRoundingMode)roundingMode;
+ (NSDecimal *)number:(NSDecimal *)number toPower:(NSUInteger)power withRoundingMode:(NSRoundingMode)roundingMode;
+ (NSCalculationError)normalizeNumberOne:(NSDecimal *)number1 numberTwo:(NSDecimal *)number2 withRoundingMode:(NSRoundingMode)roundingMode;

#pragma mark - Comparing Decimals
+ (NSComparisonResult)compareLeftOperand:(NSDecimal *)leftOperand withRightOperand:(NSDecimal *)rightOperand;

@end
