//
//  JokkmokkIntersectionOfArraysTests.m
//  Jokkmokk
//
//  Created by Muhammed Said Özcan on 02/09/16.
//  Copyright © 2016 Muhammed Said Özcan. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "IntersectionOfArrays.h"

@interface JokkmokkIntersectionOfArraysTests : XCTestCase

@end

@implementation JokkmokkIntersectionOfArraysTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testIntersectionOfArrays {
    NSArray *a = @[@1, @3, @4, @5, @7];
    NSArray *b = @[@-1, @3, @0, @9, @7];
    NSArray *c = @[@0, @31, @32, @22, @6];
    
    NSArray *elements = [IntersectionOfArrays _findTheElementsAtleastPresentIn2Arrays:a b:b c:c];
    XCTAssertNotNil(elements);
    XCTAssertTrue(elements.count > 0);
    XCTAssertTrue([elements containsObject:@3]);
    XCTAssertTrue([elements containsObject:@0]);
}

@end
