//
//  BHExampleViewController.m
//  BHDemo
//
//  Created by QiaoBaHui on 2019/01/14.
//  Copyright © 2019年 QiaoBaHui. All rights reserved.
//

#import "BHExampleViewController.h"
#import "BigNumber.h"

@interface BHExampleViewController ()

@end

static NSString *const DEMO_VIEWS_STORYBOARD_NAME = @"DemoViews";


@implementation BHExampleViewController

+ (instancetype)create {
	UIStoryboard *demoViewsStoryboard = [UIStoryboard storyboardWithName:DEMO_VIEWS_STORYBOARD_NAME bundle:nil];
	return [demoViewsStoryboard instantiateViewControllerWithIdentifier:NSStringFromClass([BHExampleViewController class])];
}

#pragma mark - ViewController LifeCycle

- (void)viewDidLoad {
	[super viewDidLoad];
	
	BigNumber *firstBigNumber = [BigNumber bigNumberWithDecimalString:@"1231343132123541534231231321641232112"];
	BigNumber *secondBigNumber = [BigNumber bigNumberWithDecimalString:@"234234231231234542124424215341"];
	NSLog(@"\nfirstBigNumber = %@;\nsecondBigNumber = %@", firstBigNumber.decimalString, secondBigNumber.decimalString);
	
	// 加
	BigNumber *addResult = [firstBigNumber add:secondBigNumber];
	NSLog(@"addResult: %@", addResult.decimalString);// 输出: 1231343366357772765465773446065447453
	
	// 减
	BigNumber *subResult = [firstBigNumber sub:secondBigNumber];
	NSLog(@"subResult: %@", subResult.decimalString);// 输出: 1231342897889310302996689197217016771
	
	// 乘
	BigNumber *mulResult = [firstBigNumber mul:secondBigNumber];
	NSLog(@"mulResult: %@", mulResult.decimalString);// 输出: 288422711934818213621854161923684704873335116585485401848052230192
	
	// 除
	BigNumber *divResult = [firstBigNumber div:secondBigNumber];
	NSLog(@"divResult = %@", divResult.decimalString);// 输出: 5256888
	
	// 余
	BigNumber *modResult = [firstBigNumber mod:secondBigNumber];
	NSLog(@"modResult = %@", modResult.decimalString);// 输出: 12774839444551851157105713304
	
	// 比较
	BOOL isEqual = [firstBigNumber isEqual:secondBigNumber];
	NSLog(@"是否相等: %@", isEqual ? @"相等" : @"不相等");// 输出: 不相等
	
	BOOL isFirstLessThanEqualToSecondNumber = [firstBigNumber lessThanEqualTo:secondBigNumber];
	NSLog(@"大小比较: %@", isFirstLessThanEqualToSecondNumber ? @"不大于" : @"大于");// 输出: 大于
}

@end
