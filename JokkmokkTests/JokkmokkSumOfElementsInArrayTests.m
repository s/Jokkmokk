//
//  JokkmokkSumOfElementsInArrayTests.m
//  Jokkmokk
//
//  Created by Muhammed Said Özcan on 04/09/16.
//  Copyright © 2016 Muhammed Said Özcan. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "SumOfElementsInArray.h"

@interface JokkmokkSumOfElementsInArrayTests : XCTestCase

@end

@implementation JokkmokkSumOfElementsInArrayTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)testSumOfelementsInArray {
    NSArray *array = @[@10, @12, @1, @3, @5, @0, @9, @11, @7, @55];
    XCTAssertTrue([SumOfElementsInArray checkIfThereAreTwoElementsInArray:array thoseSumIs:56]);
    XCTAssertTrue([SumOfElementsInArray checkIfThereAreTwoElementsInArray:array thoseSumIs:4]);
    XCTAssertTrue([SumOfElementsInArray checkIfThereAreTwoElementsInArray:array thoseSumIs:8]);
    XCTAssertTrue([SumOfElementsInArray checkIfThereAreTwoElementsInArray:array thoseSumIs:19]);
    XCTAssertFalse([SumOfElementsInArray checkIfThereAreTwoElementsInArray:array thoseSumIs:0]);
    XCTAssertFalse([SumOfElementsInArray checkIfThereAreTwoElementsInArray:array thoseSumIs:-10]);
    XCTAssertFalse([SumOfElementsInArray checkIfThereAreTwoElementsInArray:array thoseSumIs:27]);
}

@end
