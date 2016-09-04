//
//  ConcurrentUsers.h
//  Jokkmokk
//
//  Created by Muhammed Said Özcan on 04/09/16.
//  Copyright © 2016 Muhammed Said Özcan. All rights reserved.
//

#import <Foundation/Foundation.h>

@class LogUser;
@interface ConcurrentUsers : NSObject
+(NSInteger)findMaximumNumberOfConcurrentUsersFromLogs:(NSArray <LogUser *> *)logs;
@end
