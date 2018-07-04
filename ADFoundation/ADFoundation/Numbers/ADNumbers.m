//
//  ADNumbers.m
//  ADFoundation
//
//  Created by Анна on 04.07.2018.
//  Copyright © 2018 ad. All rights reserved.
//

#import "ADNumbers.h"

@implementation ADNumbers

+ (NSInteger)randomIntegerNumberFrom:(NSInteger)fromNumber to:(NSInteger)toNumber {
    NSLog(@"%ld - mon, %ld - max", NSIntegerMin, NSIntegerMax);
    float min = (fromNumber <= toNumber && fromNumber >= NSIntegerMin && fromNumber <= NSIntegerMax) ? fromNumber : NSIntegerMin;
    float max = (fromNumber <= toNumber && toNumber <= NSIntegerMax && toNumber >= NSIntegerMin) ? toNumber : NSIntegerMax;
//    return (NSInteger)(min + arc4random_uniform(max - min + 1));
//    return (NSInteger)((((float)arc4random() / 0x100000000) * (max - min) + min) + 0.5);
    return (NSInteger)([self numberFrom:min to:max] + 0.5);
}

+ (NSUInteger)randomUnsignedIntegerNumberFrom:(NSUInteger)fromNumber to:(NSUInteger)toNumber {
    
    float min = (fromNumber <= toNumber && fromNumber <= NSUIntegerMax) ? fromNumber : 0;
    float max = (fromNumber <= toNumber && toNumber <= NSUIntegerMax) ? toNumber : NSUIntegerMax;
    NSLog(@"%f - mon, %f - max", min, max);
    //    return (NSInteger)(min + arc4random_uniform(max - min + 1));
//    return (NSUInteger)((((float)arc4random() / 0x100000000) * (max - min) + min) + 0.5);
    return (NSUInteger)([self numberFrom:min to:max] + 0.5);
}

+ (float)numberFrom:(float)minBound to:(float)maxBound {
    return (((float)arc4random() / 0x100000000) * (maxBound - minBound) + minBound);
}

@end
