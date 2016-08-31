//
//  JokmokkIntegerToAsciiTests.m
//  Jokkmokk
//
//  Created by Muhammed Said Özcan on 31/08/16.
//  Copyright © 2016 Muhammed Said Özcan. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "IntegerToAscii.h"

@interface JokmokkIntegerToAsciiTests : XCTestCase
@end

@implementation JokmokkIntegerToAsciiTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    XCTAssertTrue([[IntegerToAscii convertIntegerToString:12] isEqualToString:@"12"]);
    XCTAssertTrue([[IntegerToAscii convertIntegerToString:-12] isEqualToString:@"-12"]);
    XCTAssertTrue([[IntegerToAscii convertIntegerToString:0] isEqualToString:@"0"]);
    XCTAssertTrue([[IntegerToAscii convertIntegerToString:9051] isEqualToString:@"9051"]);
}

@end
