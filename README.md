## BigNumber

### 简介
> **<ethers>开源框架中摘录的BigNumber类, 用于`大整数`的运算和比较 , 稍作整理, 去除了业务上面的代码模块. 改为较为通用的`BigNumber`类, 继承自`NSObject`.**

### 场景
> 在特定场景下, 基本数据类型的运算可能已经满足不了需求了, 为了避免数据的隐式转换, 那么就需要`大数`的运算了. 了解下基本数据类型的取值范围:
**int: `2147483648～2147483647`**\n
**unsigned int: `0～4294967295`**\n
**unsigned long: `0～4294967295`**\n
**long: `2147483648～2147483647`**\n
**long long：`-9223372036854775808～9223372036854775807`**\n
**unsigned long long: `1844674407370955161`**\n
**__int64：`-9223372036854775808～9223372036854775807`**\n
**unsigned __int64：`18446744073709551615`**

### 接口声明
``` Objective-C
@interface BigNumber : NSObject

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
- (BOOL)equalTo:(BigNumber *)other;
- (BOOL)lessThan:(BigNumber *)other;
- (BOOL)lessThanEqualTo:(BigNumber *)other;
- (BOOL)greaterThan:(BigNumber *)other;
- (BOOL)greaterThanEqualTo:(BigNumber *)other;

@end
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
