//
//  IntersectionOfArrays.m
//  Jokkmokk
//
//  Created by Muhammed Said Özcan on 02/09/16.
//  Copyright © 2016 Muhammed Said Özcan. All rights reserved.
//

#import "IntersectionOfArrays.h"

@implementation IntersectionOfArrays

+(NSArray *)findTheElementsAtleastPresentIn2Arrays:(NSArray*)aList b:(NSArray*)bList c:(NSArray*)cList{
    NSMutableDictionary <NSNumber*, NSMutableArray*> *elementsOccurences = [NSMutableDictionary dictionary];
    NSMutableArray <NSNumber *> *resultArray = [NSMutableArray array];
    NSInteger leastNumberOfTimesPresent = 2;
    NSInteger listIndex = 0;
    
    // O(n+k+m)
    for (NSArray *anyList in @[aList, bList, cList]){
        
        NSNumber *listId = [NSNumber numberWithInteger:listIndex];
        listIndex++;
        
        for (NSNumber *element in anyList){ // n times where n is the number of elements in anyList.
        
            NSMutableArray *occurences = [elementsOccurences objectForKey:element];
            if (nil == occurences){
                occurences = [NSMutableArray array];
            }
            
            //Occurences could have maximum number of 3 so here O(n) but since it is constant doesn't matter for this problem. If we would have
            //n arrays than this could be a problem in terms of time complexity.
            if (![occurences containsObject:listId]){
                [occurences addObject:listId];
            }
            
            [elementsOccurences setObject:occurences forKey:element];
        }
    }
    
    for (NSNumber *key in elementsOccurences){
        
        NSMutableArray *occurencesForKey = [elementsOccurences objectForKey:key];
        if ( nil != occurencesForKey && occurencesForKey.count >= leastNumberOfTimesPresent){
            [resultArray addObject:key];
        }
    }
    
    return [resultArray copy];
}

+(NSArray *)_findTheElementsAtleastPresentIn2Arrays:(NSArray*)aList b:(NSArray*)bList c:(NSArray*)cList{
    NSMutableArray *combinedArray = [NSMutableArray array];
    NSMutableArray *resultsArray = [NSMutableArray array];
    
    [combinedArray addObjectsFromArray:aList];
    [combinedArray addObjectsFromArray:bList];
    [combinedArray addObjectsFromArray:cList];
    
    NSCountedSet *countedSet = [[NSCountedSet alloc] initWithArray:combinedArray];
    
    for (NSNumber *number in countedSet){
        if ([countedSet countForObject:number] >= 2 && ![resultsArray containsObject:number]){
            [resultsArray addObject:number];
        }
    }
    
    return [resultsArray copy];
}

@end
