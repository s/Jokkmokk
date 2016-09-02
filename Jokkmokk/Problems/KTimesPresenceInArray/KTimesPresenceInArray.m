//
//  KTimesPresenceInArray.m
//  Jokkmokk
//
//  Created by Muhammed Said Özcan on 02/09/16.
//  Copyright © 2016 Muhammed Said Özcan. All rights reserved.
//

#import "KTimesPresenceInArray.h"

@interface KTimesPresenceInArray()
@end

@implementation KTimesPresenceInArray

-(NSArray *)findElementsInArray:(NSArray *)theArray thatArePresentKTimes:(NSNumber *)K{
    
    NSMutableDictionary <NSNumber*, NSNumber*> *occurenceDictionary = [NSMutableDictionary dictionary];
    NSMutableArray *resultArray = [NSMutableArray array];
    
    for (NSNumber *element in theArray){
        NSNumber *currentValueOfElement = [occurenceDictionary objectForKey:element];
        if (nil == [occurenceDictionary objectForKey:element]){
            currentValueOfElement = @0;
        }
        [occurenceDictionary setObject:[NSNumber numberWithInteger:currentValueOfElement.integerValue+1] forKey:element];
    }
    
    for (NSNumber* key in occurenceDictionary){
        NSNumber *occurenceOfElement = [occurenceDictionary objectForKey:key];
        if (occurenceOfElement.integerValue == K.integerValue){
            [resultArray addObject:key];
        }
    }
    
    return [resultArray copy];
}

@end
