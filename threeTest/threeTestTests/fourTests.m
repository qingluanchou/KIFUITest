//
//  fourTests.m
//  threeTestTests
//
//  Created by 曾文亮 on 2018/8/5.
//  Copyright © 2018年 haodf. All rights reserved.
//


#import <XCTest/XCTest.h>
#import <KIF/KIF.h>

@interface fourTests : KIFTestCase

@end

@implementation fourTests


- (void)beforeAll
{
    
}

- (void)afterAll
{
    
}

- (void)beforeEach
{
    [super beforeEach];
    [[viewTester usingLabel:@"input_name"] clearText];
    [[viewTester usingLabel:@"input_pass"] clearText];
}

- (void)afterEach
{
    [super afterEach];
}


- (void)testf
{
    [[viewTester usingLabel:@"input_pass"] clearAndEnterText:@"pass1"];
    [viewTester usingLabel:@"input_name"] clearAndEnterText:@"name"];
    //button0
    [[viewTester usingValue:@"登录"] tap];
    
    [[viewTester usingLabel:@"密码错误"] waitForView];
    [viewTester waitForTimeInterval:5.0];
}

- (void)testd
{
    [[viewTester usingLabel:@"input_name"] clearAndEnterText:@"name"];
    [[viewTester usingLabel:@"input_pass"] clearAndEnterText:@"pass"];
    [[viewTester usingLabel:@"登录"] tap];
    [[viewTester usingLabel:@"首页"] waitForView];
}

@end
