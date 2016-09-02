//
//  StreamGrouper.m
//  Jokkmokk
//
//  Created by Muhammed Said Özcan on 31/08/16.
//  Copyright © 2016 Muhammed Said Özcan. All rights reserved.
//

#import "StreamGrouper.h"

@interface StreamGrouper()
@property (nonatomic, strong) NSString *stream;
@end

@implementation StreamGrouper

-(instancetype)initWithStream:(NSString *)stream{
    self = [super init];
    if (self){
        self.stream = stream;
    }
    return self;
}

-(NSInteger)countOfWordInStream:(NSString *)word{
    NSInteger lengthOfWord = word.length;
    NSInteger numberOfOccurences = 0;
    
    for(NSInteger index = 0; index < self.stream.length - lengthOfWord + 1; index++){
        NSString *substring = [self.stream substringWithRange:NSMakeRange(index, lengthOfWord)];
        if ([substring isEqualToString:word]){
            numberOfOccurences++;
        }
    }
    
    return numberOfOccurences;
}

@end
