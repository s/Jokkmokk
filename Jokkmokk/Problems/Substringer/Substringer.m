//
//  Substringer.m
//  Jokkmokk
//
//  Created by Muhammed Said Özcan on 02/09/16.
//  Copyright © 2016 Muhammed Said Özcan. All rights reserved.
//

#import "Substringer.h"

@implementation Substringer

+(BOOL)isStringA:(NSString *)A substringOfStringB:(NSString *)B{
    NSInteger lengthOfA = A.length;
    
    for (NSInteger index=0; index<B.length - lengthOfA + 1; index++){
        NSString *aSubstring = [Substringer substringOfAString:B withRange:NSMakeRange(index, lengthOfA)];
        if ([aSubstring isEqualToString:A]){
            return YES;
        }
    }
    
    return NO;
}

+(NSString *)substringOfAString:(NSString *)aString withRange:(NSRange)range{
    NSMutableArray <NSString *> *characters = [NSMutableArray array];
    
    for (NSInteger index=range.location; index<range.location+range.length; index++){
        [characters addObject:[NSString stringWithFormat:@"%c", [aString characterAtIndex:index]]];
    }
    return [characters componentsJoinedByString:@""];
}

@end
