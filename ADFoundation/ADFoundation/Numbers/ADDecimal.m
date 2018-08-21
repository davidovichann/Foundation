//
//  ADDecimal.m
//  ADFoundation
//
//  Created by Анна on 21.08.2018.
//  Copyright © 2018 ad. All rights reserved.
//

#import "ADDecimal.h"

@implementation ADDecimal

+ (void)setDecimalNumber:(NSDecimal *)decimalValue fromAnotherDecimalNumber:(NSDecimal *)anotherDecimalNumber {
    NSDecimalCopy(decimalValue, anotherDecimalNumber);
}

+ (NSString *)stringRepresentationForDecimalValue:(NSDecimal *)decimalValue withLocale:(id)locale {
    return NSDecimalString(decimalValue, locale);
}

+ (void)makeCompactDecimalNumber:(NSDecimal *)decimal {
    NSDecimalCompact(decimal);
}

+ (NSDecimal *)addLeftOperand:(NSDecimal *)leftOperand toRightOperand:(NSDecimal *)rightOperand withRoundingMode:(NSRoundingMode)roundingMode {
    NSDecimal *result = NULL;
    NSCalculationError resultError = NSDecimalAdd(result, leftOperand, rightOperand, roundingMode);
    return (resultError == NSCalculationNoError) ? result : 0;
}

+ (NSDecimal *)substractRightOperand:(NSDecimal *)rightOperand fromLeft:(NSDecimal *)leftOperand withRoundingMode:(NSRoundingMode)roundingMode {
    NSDecimal *result = NULL;
    NSCalculationError resultError = NSDecimalSubtract(result, leftOperand, rightOperand, roundingMode);
    return (resultError == NSCalculationNoError) ? result : 0;
}

+ (NSDecimal *)divideLeftOperand:(NSDecimal *)leftOperand byRight:(NSDecimal *)rightOperand withRoundingMode:(NSRoundingMode)roundingMode {
    NSDecimal *result = NULL;
    NSCalculationError resultError = NSDecimalDivide(result, leftOperand, rightOperand, roundingMode);
    return (resultError == NSCalculationNoError) ? result : 0;
}

+ (NSDecimal *)multiplyLeftOperand:(NSDecimal *)leftOperand toRight:(NSDecimal *)rightOperand withRoundingMode:(NSRoundingMode)roundingMode {
    NSDecimal *result = NULL;
    NSCalculationError resultError = NSDecimalMultiply(result, leftOperand, rightOperand, roundingMode);
    return (resultError == NSCalculationNoError) ? result : 0;
}

+ (NSDecimal *)mulyiplyByPower10Number:(NSDecimal *)number withPower:(short)power withRoundingMode:(NSRoundingMode)roundingMode {
    NSDecimal *result = NULL;
    NSCalculationError resultError = NSDecimalMultiplyByPowerOf10(result, number, power, roundingMode);
    return (resultError == NSCalculationNoError) ? result : 0;
}

+ (NSDecimal *)roundNumber:(NSDecimal *)number withScale:(NSInteger)scale roundingMode:(NSRoundingMode)roundingMode {
    NSDecimal *result = NULL;
    NSDecimalRound(result, number, scale, roundingMode);
    return result;
}

+ (NSDecimal *)number:(NSDecimal *)number toPower:(NSUInteger)power withRoundingMode:(NSRoundingMode)roundingMode {
    NSDecimal *result = NULL;
    NSCalculationError resultError = NSDecimalPower(result, number, power, roundingMode);
    return (resultError == NSCalculationNoError) ? result : 0;
}

+ (NSCalculationError)normalizeNumberOne:(NSDecimal *)number1 numberTwo:(NSDecimal *)number2 withRoundingMode:(NSRoundingMode)roundingMode {
    NSCalculationError resultError = NSDecimalNormalize(number1, number2, roundingMode);
    return resultError;
}

#pragma mark - Comparing Decimals
//NSOrderedDescending if leftOperand is bigger than rightOperand;
//NSOrderedAscending if rightOperand is bigger than leftOperand; or
//NSOrderedSame if the two operands are equal.
+ (NSComparisonResult)compareLeftOperand:(NSDecimal *)leftOperand withRightOperand:(NSDecimal *)rightOperand {
    return NSDecimalCompare(leftOperand, rightOperand);
}
@end
