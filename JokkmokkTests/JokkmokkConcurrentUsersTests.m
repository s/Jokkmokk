//
//  JokkmokkConcurrentUsersTests.m
//  Jokkmokk
//
//  Created by Muhammed Said Özcan on 04/09/16.
//  Copyright © 2016 Muhammed Said Özcan. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "LogUser.h"
#import "ConcurrentUsers.h"

@interface JokkmokkConcurrentUsersTests : XCTestCase

@end

@implementation JokkmokkConcurrentUsersTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)testConcurrentUsers {
    LogUser *userA = [[LogUser alloc] initWithName:@"A" loginTime:@1 logoutTime:@3];
    LogUser *userB = [[LogUser alloc] initWithName:@"B" loginTime:@3 logoutTime:@10];
    LogUser *userC = [[LogUser alloc] initWithName:@"C" loginTime:@1 logoutTime:@2];
    LogUser *userD = [[LogUser alloc] initWithName:@"D" loginTime:@6 logoutTime:@9];
    LogUser *userE = [[LogUser alloc] initWithName:@"E" loginTime:@1 logoutTime:@3];
    
    NSMutableArray *logs = [NSMutableArray arrayWithArray:@[userA, userB, userC, userD, userE]];
    NSInteger maximumNumberOfConcurrentUsers = [ConcurrentUsers findMaximumNumberOfConcurrentUsersFromLogs:logs];
    XCTAssertTrue(maximumNumberOfConcurrentUsers == 3);
    
    
    LogUser *userF = [[LogUser alloc] initWithName:@"F" loginTime:@3 logoutTime:@6];
    LogUser *userG = [[LogUser alloc] initWithName:@"G" loginTime:@4 logoutTime:@8];
    LogUser *userH = [[LogUser alloc] initWithName:@"H" loginTime:@4 logoutTime:@7];
    
    [logs addObjectsFromArray:@[userF, userG, userH]];
    maximumNumberOfConcurrentUsers = [ConcurrentUsers findMaximumNumberOfConcurrentUsersFromLogs:logs];
    XCTAssertTrue(maximumNumberOfConcurrentUsers == 4);
}

@end
