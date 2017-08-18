//
//  threeTestTests.m
//  threeTestTests
//
//  Created by 曾文亮 on 2017/4/23.
//  Copyright © 2017年 haodf. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <KIF/KIF.h>

@interface threeTestTests : KIFTestCase

@end

@implementation threeTestTests

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


- (void)testc
{
     [[viewTester usingLabel:@"input_pass"] enterText:@"pass"];
    //button0
   //  [[viewTester usingValue:@"登录"] tap];
    
    
     [[viewTester usingIdentifier:@"login"] tap];
     [[viewTester usingLabel:@"用户名为空"] waitForView];
     [viewTester waitForTimeInterval:5.0];
}

- (void)testb
{
    [[viewTester usingLabel:@"input_name"] enterText:@"name"];
    [[viewTester usingValue:@"Button0"] tap];
    [[viewTester usingLabel:@"密码为空"] waitForView];
    //[self testc];
}

- (void)testa
{
    [[viewTester usingLabel:@"input_name"] clearAndEnterText:@"name"];
    [[viewTester usingLabel:@"input_pass"] clearAndEnterText:@"pass"];
    [[viewTester usingLabel:@"Button0"] tap];
    [[viewTester usingLabel:@"首页"] waitForView];
    [[viewTester usingLabel:@"首页"] tap];
    [[viewTester usingLabel:@"哈哈哈"] waitForView];
}

@end
