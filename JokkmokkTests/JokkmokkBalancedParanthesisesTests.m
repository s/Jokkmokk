//
//  JokkmokkTests.m
//  JokkmokkTests
//
//  Created by Muhammed Said Özcan on 31/08/16.
//  Copyright © 2016 Muhammed Said Özcan. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "BalancedParanthesises.h"

@interface JokmokkBalancedParanthesisesTests : XCTestCase
@property (nonatomic, strong) BalancedParanthesises *balancedParanthesisDetector;
@end

@implementation JokmokkBalancedParanthesisesTests

- (void)setUp {
    [super setUp];
    self.balancedParanthesisDetector = [BalancedParanthesises new];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testStringsAreBalanced{
    NSArray *balancedStreams = @[
                                 @"",
                                 @"[]",
                                 @"()",
                                 @"{}",
                                 @"[[]]",
                                 @"[[[()]]]",
                                 @"{{{[()]}}}"
                                 ];
    
    NSArray *unbalancedStreams = @[
                                   @"]",
                                   @"[)",
                                   @"[[)}",
                                   @"{[}]",
                                   @"((}}",
                                   @"{{{[())]]}}"
                                   ];
    
    for (NSString *balancedString in balancedStreams){
        XCTAssertTrue([self.balancedParanthesisDetector isParanthesisesBalanced:balancedString]);
    }
    
    for (NSString *unbalancedString in unbalancedStreams){
        
        XCTAssertFalse([self.balancedParanthesisDetector isParanthesisesBalanced:unbalancedString]);
    }
}
@end
