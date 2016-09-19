//
//  SumOfElementsInArray.m
//  Jokkmokk
//
//  Created by Muhammed Said Özcan on 04/09/16.
//  Copyright © 2016 Muhammed Said Özcan. All rights reserved.
//

#import "SumOfElementsInArray.h"

@implementation SumOfElementsInArray
+(BOOL)checkIfThereAreTwoElementsInArray:(NSArray *)array thoseSumIs:(NSInteger)sum{
    NSMutableDictionary *elementsOfArray = [NSMutableDictionary new];
    
    for (NSInteger index=0; index<array.count; index++){
        NSNumber *element = array[index];
        elementsOfArray[element] = [NSNumber numberWithInteger:index];
    }
    
    for (NSInteger index=0; index<array.count; index++){
        NSNumber *element = array[index];
        NSNumber *otherPair = [NSNumber numberWithInteger:sum - element.doubleValue];
        NSNumber *otherPairInDict = [elementsOfArray objectForKey:otherPair];
        
        if (otherPairInDict && otherPairInDict.doubleValue != index ){
            return YES;
        }
    }
    
    return NO;
}
@end
