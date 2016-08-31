//
//  JokkmokkSortUserTests.m
//  Jokkmokk
//
//  Created by Muhammed Said Özcan on 31/08/16.
//  Copyright © 2016 Muhammed Said Özcan. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "SortUsers.h"

@interface JokkmokkSortUserTests : XCTestCase
@property (nonatomic, strong) SortUsers *sorter;
@end

@implementation JokkmokkSortUserTests

- (void)setUp {
    [super setUp];
    self.sorter = [SortUsers new];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testSortUsers {
    NSArray *users = @[@[@"Jervie",@"12",@"M"],
                       @[@"Jaimy",@"11",@"F"],
                       @[@"Tony",@"23",@"M"],
                       @[@"Janey",@"11",@"F"],
                       @[@"Jonathan",@"18",@"M"],
                       @[@"Ashley",@"16",@"F"],
                       @[@"Mary",@"20",@"F"],
                       @[@"John",@"10",@"M"],
                       @[@"Bruce",@"12",@"M"]];
    
    NSArray *alreadySortedUsers = @[
                                    @[@"John",@"10",@"M"],
                                    @[@"Jaimy",@"11",@"F"],
                                    @[@"Janey",@"11",@"F"],
                                    @[@"Jervie",@"12",@"M"],
                                    @[@"Bruce",@"12",@"M"],
                                    @[@"Ashley",@"16",@"F"],
                                    @[@"Jonathan",@"18",@"M"],
                                    @[@"Mary",@"20",@"F"],
                                    @[@"Tony",@"23",@"M"]];
    
    NSArray *sortedUsers = [self.sorter sortUsers:users];
    NSLog(@"%@", sortedUsers);
    XCTAssertTrue([alreadySortedUsers isEqualToArray:sortedUsers]);
}

@end
