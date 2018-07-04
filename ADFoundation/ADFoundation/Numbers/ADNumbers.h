//
//  ADNumbers.h
//  ADFoundation
//
//  Created by Анна on 04.07.2018.
//  Copyright © 2018 ad. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ADNumbers : NSObject

+ (NSInteger)randomIntegerNumberFrom:(NSInteger)fromNumber to:(NSInteger)toNumber;
+ (NSUInteger)randomUnsignedIntegerNumberFrom:(NSUInteger)fromNumber to:(NSUInteger)toNumber;

@end
