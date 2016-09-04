//
//  JokkmokkSorterTests.m
//  Jokkmokk
//
//  Created by Muhammed Said Özcan on 04/09/16.
//  Copyright © 2016 Muhammed Said Özcan. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Sorter.h"

@interface JokkmokkSorterTests : XCTestCase

@end

@implementation JokkmokkSorterTests

- (void)testSorter {
    NSArray *anArray = @[@1, @11, @(-1), @0, @0, @50, @5, @9, @7, @23];
    
    NSArray *aSortedArray = [Sorter sortArrayUsingQuickSortAlgorithm:anArray];
    
    for (NSInteger index=0; index<aSortedArray.count-1; index++){
        NSNumber *first = aSortedArray[index];
        NSNumber *second = aSortedArray[index+1];
        XCTAssertTrue(first.doubleValue <= second.doubleValue);
    }
}
@end
