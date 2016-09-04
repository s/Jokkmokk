//
//  ConcurrentUsers.m
//  Jokkmokk
//
//  Created by Muhammed Said Özcan on 04/09/16.
//  Copyright © 2016 Muhammed Said Özcan. All rights reserved.
//

#import "ConcurrentUsers.h"
#import "LogUser.h"
#import "Sorter.h"

@implementation ConcurrentUsers

+(NSInteger)findMaximumNumberOfConcurrentUsersFromLogs:(NSArray <LogUser *> *)logs{
    NSMutableArray *loginArray = [NSMutableArray array];
    NSMutableArray *logoutArray = [NSMutableArray array];
    NSMutableArray *concurrentUsersAtAllTimes = [NSMutableArray array];
    
    for(LogUser *user in logs){
        [loginArray addObject:user.loginTime];
        [logoutArray addObject:user.logoutTime];
    }
    
    loginArray = [NSMutableArray arrayWithArray:[Sorter sortArrayUsingQuickSortAlgorithm:loginArray]];
    logoutArray = [NSMutableArray arrayWithArray:[Sorter sortArrayUsingQuickSortAlgorithm:logoutArray]];
    
    NSInteger firstIndex = 0;
    NSInteger secondIndex = 0;
    NSInteger numberOfCurrentConcurrentUsers = 0;
    
    while (firstIndex < loginArray.count && secondIndex < logoutArray.count){
        
        if (loginArray[firstIndex] < logoutArray[secondIndex]){
            numberOfCurrentConcurrentUsers +=1;
            firstIndex +=1;
        }else{
            numberOfCurrentConcurrentUsers -=1;
            secondIndex +=1;
        }
        
        [concurrentUsersAtAllTimes addObject:[NSNumber numberWithInteger:numberOfCurrentConcurrentUsers]];
    }
    
    while (firstIndex < loginArray.count){
        numberOfCurrentConcurrentUsers +=1;
        [concurrentUsersAtAllTimes addObject:[NSNumber numberWithInteger:numberOfCurrentConcurrentUsers]];
        firstIndex += 1;
    }
    
    while (secondIndex < logoutArray.count){
        numberOfCurrentConcurrentUsers -=1;
        [concurrentUsersAtAllTimes addObject:[NSNumber numberWithInteger:numberOfCurrentConcurrentUsers]];
        secondIndex += 1;
    }
    
    NSInteger maximumNumberOfConcurrentUsers = 0;
    for (NSNumber *number in concurrentUsersAtAllTimes){
        if (number.doubleValue > maximumNumberOfConcurrentUsers){
            maximumNumberOfConcurrentUsers = number.doubleValue;
        }
    }
    return maximumNumberOfConcurrentUsers;
}
@end
