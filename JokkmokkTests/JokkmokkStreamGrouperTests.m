//
//  JokkmokkStreamGrouperTests.m
//  Jokkmokk
//
//  Created by Muhammed Said Özcan on 31/08/16.
//  Copyright © 2016 Muhammed Said Özcan. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "StreamGrouper.h"

@interface JokkmokkStreamGrouperTests : XCTestCase
@property (nonatomic, strong) StreamGrouper *grouper;
@end

@implementation JokkmokkStreamGrouperTests

- (void)setUp {
    [super setUp];
    self.grouper = [[StreamGrouper alloc] initWithStream:@"acababadabcacadabkabacashabaca"];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testStreamGrouper {
    XCTAssertTrue([self.grouper countOfWordInStream:@"aca"] == 4);
    XCTAssertTrue([self.grouper countOfWordInStream:@"ada"] == 2);
    XCTAssertTrue([self.grouper countOfWordInStream:@"aba"] == 4);
    XCTAssertTrue([self.grouper countOfWordInStream:@"bca"] == 1);
    XCTAssertTrue([self.grouper countOfWordInStream:@"ba"] == 4);
}

@end
