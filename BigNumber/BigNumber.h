//
//  BigNumber.h
//  Created by QiaoBaHui on 2019/01/14.
//  Copyright © 2019年 QiaoBaHui. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BigNumber : NSObject

@property (nonatomic, readonly) NSString *decimalString;
@property (nonatomic, readonly) NSString *hexString;

@property (nonatomic, readonly) BOOL isSafeUnsignedIntegerValue;
@property (nonatomic, readonly) NSUInteger unsignedIntegerValue;

@property (nonatomic, readonly) BOOL isSafeIntegerValue;
@property (nonatomic, readonly) NSInteger integerValue;

@property (nonatomic, readonly) BOOL isZero;
@property (nonatomic, readonly) BOOL isNegative;

+ (BigNumber *)constantNegativeOne;
+ (BigNumber *)constantZero;
+ (BigNumber *)constantOne;
+ (BigNumber *)constantTwo;

+ (instancetype)bigNumberWithDecimalString:(NSString *)decimalString;
+ (instancetype)bigNumberWithHexString:(NSString *)hexString;

+ (instancetype)bigNumberWithNumber:(NSNumber *)number;
+ (instancetype)bigNumberWithInteger:(NSInteger)integer;

- (BigNumber *)add:(BigNumber *)other;
- (BigNumber *)sub:(BigNumber *)other;
- (BigNumber *)mul:(BigNumber *)other;
- (BigNumber *)div:(BigNumber *)other;
- (BigNumber *)mod:(BigNumber *)other;

- (BOOL)isEqual:(id)object;
- (NSComparisonResult)compare:(id)other;

- (BOOL)lessThan:(BigNumber *)other;
- (BOOL)lessThanEqualTo:(BigNumber *)other;
- (BOOL)greaterThan:(BigNumber *)other;
- (BOOL)greaterThanEqualTo:(BigNumber *)other;

@end
