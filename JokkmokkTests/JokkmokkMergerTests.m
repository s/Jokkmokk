//
//  JokkmokkMergerTests.m
//  Jokkmokk
//
//  Created by Muhammed Said Özcan on 04/09/16.
//  Copyright © 2016 Muhammed Said Özcan. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Merger.h"

@interface JokkmokkMergerTests : XCTestCase

@end

@implementation JokkmokkMergerTests

- (void)setUp {
    [super setUp];
}

- (void)testExample {
    NSArray *firstArray = @[@1, @2, @4, @6, @19, @30];
    NSArray *secondArray = @[@2, @2, @3, @5, @7, @8, @9, @29, @31, @33, @100];
    
    NSArray *mergedArray = [Merger mergeArrays:firstArray secondArray:secondArray];
    for (NSInteger index=0; index<mergedArray.count-1; index++){
        NSNumber *first = mergedArray[index];
        NSNumber *second = mergedArray[index+1];
        XCTAssertTrue(first.doubleValue <= second.doubleValue);
    }
    
    for (NSInteger index=0; index<firstArray.count; index++){
        XCTAssertTrue([mergedArray containsObject:firstArray[index]]);
    }
    
    for (NSInteger index=0; index<secondArray.count; index++){
        XCTAssertTrue([mergedArray containsObject:secondArray[index]]);
    }
    
    XCTAssertTrue(firstArray.count + secondArray.count == mergedArray.count);
}

@end
