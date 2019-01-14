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
}

@end
