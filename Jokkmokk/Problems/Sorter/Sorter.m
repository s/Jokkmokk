//
//  Sorter.m
//  Jokkmokk
//
//  Created by Muhammed Said Özcan on 04/09/16.
//  Copyright © 2016 Muhammed Said Özcan. All rights reserved.
//

#import "Sorter.h"

@implementation Sorter
+(NSArray <NSNumber *> *)sortArrayUsingQuickSortAlgorithm:(NSArray <NSNumber *> *)arrayToSort{
    NSMutableArray *lesserElements = [NSMutableArray array];
    NSMutableArray *equalElements = [NSMutableArray array];
    NSMutableArray *greaterElements = [NSMutableArray array];
    NSMutableArray *sortedArray = [NSMutableArray array];
    
    if (arrayToSort.count < 2){
        return arrayToSort;
    }
    
    NSNumber *pivotElement = [arrayToSort objectAtIndex:arrayToSort.count/2];
    
    for (NSNumber *element in arrayToSort){
        
        if (element.doubleValue < pivotElement.doubleValue){
            [lesserElements addObject:element];
        }
        
        if (element.doubleValue == pivotElement.doubleValue){
            [equalElements addObject:element];
        }
        
        if (element.doubleValue > pivotElement.doubleValue){
            [greaterElements addObject:element];
        }
    }
    
    [sortedArray addObjectsFromArray:[Sorter sortArrayUsingQuickSortAlgorithm:lesserElements]];
    [sortedArray addObjectsFromArray:equalElements];
    [sortedArray addObjectsFromArray:[Sorter sortArrayUsingQuickSortAlgorithm:greaterElements]];
    
    return [sortedArray copy];
}
@end
