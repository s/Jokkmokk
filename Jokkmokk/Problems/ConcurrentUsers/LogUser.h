//
//  LogUser.h
//  Jokkmokk
//
//  Created by Muhammed Said Özcan on 04/09/16.
//  Copyright © 2016 Muhammed Said Özcan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LogUser : NSObject
@property (nonatomic, readonly) NSString *name;
@property (nonatomic, readonly) NSNumber *loginTime;
@property (nonatomic, readonly) NSNumber *logoutTime;

-(instancetype)initWithName:(NSString *)name loginTime:(NSNumber *)loginTime logoutTime:(NSNumber *)logoutTime;
@end
