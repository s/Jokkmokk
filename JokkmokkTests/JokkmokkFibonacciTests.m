//
//  JokkmokkFibonacciTests.m
//  Jokkmokk
//
//  Created by Muhammed Said Özcan on 31/08/16.
//  Copyright © 2016 Muhammed Said Özcan. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Fibonacci.h"

@interface JokkmokkFibonacciTests : XCTestCase
@property (nonatomic, strong) Fibonacci *fiboLoop;
@property (nonatomic, strong) Fibonacci *fiboRecursion;
@end

@implementation JokkmokkFibonacciTests

- (void)setUp {
    [super setUp];
    self.fiboLoop = [[Fibonacci alloc] initWithMode:FibonacciInitTypeLoop];
    self.fiboRecursion = [[Fibonacci alloc] initWithMode:FibonacciInitTypeRecursion];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testFiboRecursion {
    XCTAssertTrue([self.fiboRecursion findNthNumber:1] == 1);
    XCTAssertTrue([self.fiboRecursion findNthNumber:2] == 1);
    XCTAssertTrue([self.fiboRecursion findNthNumber:3] == 2);
    XCTAssertTrue([self.fiboRecursion findNthNumber:7] == 13);
    XCTAssertTrue([self.fiboRecursion findNthNumber:11] == 89);
    XCTAssertTrue([self.fiboRecursion findNthNumber:14] == 377);
}

- (void)testFiboLoop{
    XCTAssertTrue([self.fiboRecursion findNthNumber:1] == 1);
    XCTAssertTrue([self.fiboRecursion findNthNumber:2] == 1);
    XCTAssertTrue([self.fiboRecursion findNthNumber:3] == 2);
    XCTAssertTrue([self.fiboRecursion findNthNumber:7] == 13);
    XCTAssertTrue([self.fiboRecursion findNthNumber:11] == 89);
    XCTAssertTrue([self.fiboRecursion findNthNumber:14] == 377);
}
@end
