//
//  JokkmokkSubstringerTests.m
//  Jokkmokk
//
//  Created by Muhammed Said Özcan on 02/09/16.
//  Copyright © 2016 Muhammed Said Özcan. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Substringer.h"

@interface JokkmokkSubstringerTests : XCTestCase

@end

@implementation JokkmokkSubstringerTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testSubstringer {
    XCTAssertTrue([Substringer isStringA:@"hello" substringOfStringB:@"ohhello"]);
    XCTAssertTrue([Substringer isStringA:@"ello" substringOfStringB:@"ohhello"]);
    XCTAssertFalse([Substringer isStringA:@"ello" substringOfStringB:@"lloeho"]);
}

@end
