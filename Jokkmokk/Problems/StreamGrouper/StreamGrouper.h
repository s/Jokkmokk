//
//  StreamGrouper.h
//  Jokkmokk
//
//  Created by Muhammed Said Özcan on 31/08/16.
//  Copyright © 2016 Muhammed Said Özcan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StreamGrouper : NSObject
-(instancetype)initWithStream:(NSString *)stream;
-(NSInteger)countOfWordInStream:(NSString *)word;
@end
