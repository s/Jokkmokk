//
//  Merger.m
//  Jokkmokk
//
//  Created by Muhammed Said Özcan on 04/09/16.
//  Copyright © 2016 Muhammed Said Özcan. All rights reserved.
//

#import "Merger.h"

@implementation Merger
+(NSArray *)mergeArrays:(NSArray <NSNumber *> *)firstArray secondArray:(NSArray <NSNumber *> *)secondArray{
    NSMutableArray *mergedArray = [NSMutableArray array];
    NSInteger firstIndex = 0;
    NSInteger secondIndex = 0;
    
    while (firstIndex < firstArray.count && secondIndex < secondArray.count){
        
        if (firstArray[firstIndex].doubleValue < secondArray[secondIndex].doubleValue){
            [mergedArray addObject:firstArray[firstIndex]];
            firstIndex = firstIndex + 1;
        }else {
            [mergedArray addObject:secondArray[secondIndex]];
            secondIndex = secondIndex + 1;
        }
    }
    
    while (firstIndex < firstArray.count){
        [mergedArray addObject:firstArray[firstIndex]];
        firstIndex = firstIndex + 1;
    }
    
    while (secondIndex < secondArray.count){
        [mergedArray addObject:secondArray[secondIndex]];
        secondIndex = secondIndex + 1;
    }
    
    return [mergedArray copy];
}
@end
