### 简介
> **Ether项目中摘录的BigNumber类, 用于`大整数`的运算和比较 !!!**

### 接口声明
``` Swift
// ** Constant Values **
+ (BigNumber *)constantNegativeOne;
+ (BigNumber *)constantZero;
+ (BigNumber *)constantOne;
+ (BigNumber *)constantTwo;

// ** Init Methods **
+ (instancetype)bigNumberWithDecimalString:(NSString *)decimalString;
+ (instancetype)bigNumberWithNumber:(NSNumber *)number;
+ (instancetype)bigNumberWithInteger:(NSInteger)integer;

// ** Calculate Methods **
- (BigNumber *)add:(BigNumber *)other;
- (BigNumber *)sub:(BigNumber *)other;
- (BigNumber *)mul:(BigNumber *)other;
- (BigNumber *)div:(BigNumber *)other;
- (BigNumber *)mod:(BigNumber *)other;

// ** Compare Methods **
- (BOOL)isEqualTo:(BigNumber *)other;
- (BOOL)lessThan:(BigNumber *)other;
- (BOOL)lessThanEqualTo:(BigNumber *)other;
- (BOOL)greaterThan:(BigNumber *)other;
- (BOOL)greaterThanEqualTo:(BigNumber *)other;

```

### **使用姿势**
``` Swift
BigNumber *firstBigNumber = [BigNumber bigNumberWithDecimalString:@"321641232112"];
BigNumber *secondBigNumber = [BigNumber bigNumberWithNumber:@(999424241)];

// 加
BigNumber *addResult = [firstBigNumber add:secondBigNumber];
NSLog(@"addResult: %@", addResult.decimalString);// 输出: 322640656353

// 减
BigNumber *subResult = [firstBigNumber sub:secondBigNumber];
NSLog(@"subResult: %@", subResult.decimalString);// 输出: 320641807871

// 乘
BigNumber *mulResult = [firstBigNumber mul:secondBigNumber];
NSLog(@"mulResult: %@", mulResult.decimalString);// 输出: 321456044277840426992

// 除
BigNumber *divResult = [firstBigNumber div:secondBigNumber];
NSLog(@"divResult = %@", divResult.decimalString);// 输出: 321

// 余
BigNumber *modResult = [firstBigNumber mod:secondBigNumber];
NSLog(@"modResult = %@", modResult.decimalString);// 输出: 826050751

// 比较
BOOL isEqual = [firstBigNumber isEqualTo:secondBigNumber];
NSLog(@"是否相等: %@", isEqual ? @"相等" : @"不相等");// 输出: 不相等

BOOL isFirstLessThanEqualToSecondNumber = [firstBigNumber lessThanEqualTo:secondBigNumber];
NSLog(@"大小比较: %@", isFirstLessThanEqualToSecondNumber ? @"不大于" : @"大于");// 输出: 大于

```
### 交流与建议

*   GitHub：[https://github.com/BaHui](https://github.com/BaHui)
*   邮    箱：[qiaobahuiyouxiang@163.com](mailto:qiaobahuiyouxiang@163.com)
