//
//  JokkmokkArrayRotateTests.m
//  Jokkmokk
//
//  Created by Muhammed Said Özcan on 10/09/16.
//  Copyright © 2016 Muhammed Said Özcan. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ArrayRotate.h"

@interface JokkmokkArrayRotateTests : XCTestCase

@end

@implementation JokkmokkArrayRotateTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testRotateArray {
    ArrayRotate *rotater = [ArrayRotate new];
    NSArray *array = @[@1, @2, @3, @4, @5, @6];
    NSArray <NSNumber *> *rotatedArray;
    
    rotatedArray = [rotater rotateArray:array byNTimes:3 withRotationMethod:RotationTypeTemp toDirection:RotationDirectionLeft];
    [self testRotatedArray:rotatedArray toOriginalArray:array byNTimes:3 direction:RotationDirectionLeft];
    
    rotatedArray = [rotater rotateArray:array byNTimes:-2 withRotationMethod:RotationTypeTemp toDirection:RotationDirectionLeft];
    [self testRotatedArray:rotatedArray toOriginalArray:array byNTimes:-2 direction:RotationDirectionLeft];
    
    rotatedArray = [rotater rotateArray:array byNTimes:2 withRotationMethod:RotationTypeTemp toDirection:RotationDirectionRight];
    [self testRotatedArray:rotatedArray toOriginalArray:array byNTimes:2 direction:RotationDirectionRight];
    
    rotatedArray = [rotater rotateArray:array byNTimes:-5 withRotationMethod:RotationTypeTemp toDirection:RotationDirectionRight];
    [self testRotatedArray:rotatedArray toOriginalArray:array byNTimes:-5 direction:RotationDirectionRight];
    
    array = @[];
    rotatedArray = [rotater rotateArray:array byNTimes:3 withRotationMethod:RotationTypeOneStepAtATime toDirection:RotationDirectionLeft];
    XCTAssertNil(rotatedArray);
    
    array = @[@11];
    rotatedArray = [rotater rotateArray:array byNTimes:13 withRotationMethod:RotationTypeOneStepAtATime toDirection:RotationDirectionRight];
    XCTAssertTrue(rotatedArray.count == 1);
    XCTAssertTrue(rotatedArray[0].intValue == 11);
    
    array = @[@100, @50, @25, @12, @6, @3, @1, @0];
    rotatedArray = [rotater rotateArray:array byNTimes:2 withRotationMethod:RotationTypeOneStepAtATime toDirection:RotationDirectionRight];
    [self testRotatedArray:rotatedArray toOriginalArray:array byNTimes:2 direction:RotationDirectionRight];
    
    rotatedArray = [rotater rotateArray:array byNTimes:-2 withRotationMethod:RotationTypeOneStepAtATime toDirection:RotationDirectionRight];
    [self testRotatedArray:rotatedArray toOriginalArray:array byNTimes:-2 direction:RotationDirectionRight];
    
    rotatedArray = [rotater rotateArray:array byNTimes:0 withRotationMethod:RotationTypeOneStepAtATime toDirection:RotationDirectionRight];
    [self testRotatedArray:rotatedArray toOriginalArray:array byNTimes:0 direction:RotationDirectionRight];
    
    rotatedArray = [rotater rotateArray:array byNTimes:10 withRotationMethod:RotationTypeOneStepAtATime toDirection:RotationDirectionRight];
    [self testRotatedArray:rotatedArray toOriginalArray:array byNTimes:10 direction:RotationDirectionRight];
}

- (void)testRotatedArray:(NSArray <NSNumber *>*)rotatedArray
         toOriginalArray:(NSArray <NSNumber *> *)originalArray
                byNTimes:(NSInteger)n
               direction:(RotationDirection)direction{
    
    XCTAssertNotNil(rotatedArray);
    XCTAssertTrue(rotatedArray.count == originalArray.count);
    
    for(NSInteger index=0; index<originalArray.count; index++){
        
        NSInteger toCompareIndex;
        if (RotationDirectionLeft == direction){
            toCompareIndex = index - n;
        }else{
            toCompareIndex = index + n;
        }
        
        if (toCompareIndex < 0){
            toCompareIndex += originalArray.count;
        }else if(toCompareIndex >= originalArray.count){
            toCompareIndex %= originalArray.count;
        }
    
        XCTAssertTrue(originalArray[index].intValue == rotatedArray[toCompareIndex].intValue);
    }
}

@end
