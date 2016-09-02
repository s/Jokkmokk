//
//  JokkmokkKTimesPresenceInArrayTests.m
//  Jokkmokk
//
//  Created by Muhammed Said Özcan on 02/09/16.
//  Copyright © 2016 Muhammed Said Özcan. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "KTimesPresenceInArray.h"

@interface JokkmokkKTimesPresenceInArrayTests : XCTestCase
@property (strong, nonatomic) KTimesPresenceInArray *finder;
@end

@implementation JokkmokkKTimesPresenceInArrayTests

- (void)setUp {
    [super setUp];
    self.finder = [KTimesPresenceInArray new];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testKTimesPresenceInArray {
    NSArray *anArray = @[@1, @3, @1, @3, @4, @13, @20, @1, @3, @4, @5, @6, @9, @0, @6, @9, @7, @20];
    
    NSArray *elementsPresentOneTime = [self.finder findElementsInArray:anArray thatArePresentKTimes:@1];
    
    XCTAssertTrue([elementsPresentOneTime containsObject:@13]);
    XCTAssertTrue([elementsPresentOneTime containsObject:@5]);
    XCTAssertTrue([elementsPresentOneTime containsObject:@0]);
    XCTAssertTrue([elementsPresentOneTime containsObject:@7]);
    
    NSArray *elementsPresentTwoTimes = [self.finder findElementsInArray:anArray thatArePresentKTimes:@2];
    
    XCTAssertTrue([elementsPresentTwoTimes containsObject:@4]);
    XCTAssertTrue([elementsPresentTwoTimes containsObject:@6]);
    XCTAssertTrue([elementsPresentTwoTimes containsObject:@9]);
    XCTAssertTrue([elementsPresentTwoTimes containsObject:@20]);
    
    NSArray *elementsPresentThreeTimes = [self.finder findElementsInArray:anArray thatArePresentKTimes:@3];
    
    XCTAssertTrue([elementsPresentThreeTimes containsObject:@1]);
    XCTAssertTrue([elementsPresentThreeTimes containsObject:@3]);
    
    NSArray *elementsPresentFourTimes = [self.finder findElementsInArray:anArray thatArePresentKTimes:@4];
    XCTAssertTrue(0 == elementsPresentFourTimes.count);
}

@end
