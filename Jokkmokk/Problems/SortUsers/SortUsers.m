//
//  SortUsers.m
//  Jokkmokk
//
//  Created by Muhammed Said Özcan on 31/08/16.
//  Copyright © 2016 Muhammed Said Özcan. All rights reserved.
//

#import "SortUsers.h"

@interface SortUsers()
@end

@implementation SortUsers

- (NSArray *)sortUsers:(NSArray *)users{
    NSMutableArray *lessElements = [NSMutableArray array];
    NSMutableArray *equalElements = [NSMutableArray array];
    NSMutableArray *greaterlements = [NSMutableArray array];
    
    if (users.count > 1){
        NSNumber *pivot = [self integerElementOfString:users[0][1]];
        
        for (NSArray *row in users){
            NSNumber *currentAge = [self integerElementOfString:row[1]];
            if (currentAge < pivot){
                [lessElements addObject:row];
            }
            
            if (currentAge == pivot){
                [equalElements addObject:row];
            }
            
            if (currentAge > pivot){
                [greaterlements addObject:row];
            }
        }
        
        NSMutableArray *combinedArray = [NSMutableArray array];
        
        [combinedArray addObjectsFromArray:[self sortUsers:lessElements]];
        [combinedArray addObjectsFromArray:[equalElements copy]];
        [combinedArray addObjectsFromArray:[self sortUsers:greaterlements]];
        
        return [combinedArray copy];
    }else{
        return users;
    }
}

-(NSNumber *)integerElementOfString:(NSString *)string{
    return [NSNumber numberWithInteger:string.integerValue];
}

@end
