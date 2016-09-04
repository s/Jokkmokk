//
//  LogUser.m
//  Jokkmokk
//
//  Created by Muhammed Said Özcan on 04/09/16.
//  Copyright © 2016 Muhammed Said Özcan. All rights reserved.
//

#import "LogUser.h"

@interface LogUser()
@property (nonatomic, readwrite) NSString *name;
@property (nonatomic, readwrite) NSNumber *loginTime;
@property (nonatomic, readwrite) NSNumber *logoutTime;
@end

@implementation LogUser
-(instancetype)initWithName:(NSString *)name loginTime:(NSNumber *)loginTime logoutTime:(NSNumber *)logoutTime{
    self = [super init];
    if(self){
        self.name = name;
        self.loginTime = loginTime;
        self.logoutTime = logoutTime;
    }
    return self;
}
@end
