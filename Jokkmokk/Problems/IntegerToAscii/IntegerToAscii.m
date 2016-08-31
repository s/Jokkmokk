//
//  IntegerToAscii.m
//  Jokkmokk
//
//  Created by Muhammed Said Özcan on 31/08/16.
//  Copyright © 2016 Muhammed Said Özcan. All rights reserved.
//

#import "IntegerToAscii.h"

@implementation IntegerToAscii

+(NSString *)convertIntegerToString:(NSInteger)integer{
    NSString *output = @"";
    BOOL isNegative = NO;
    
    if(integer < 0){
        isNegative = YES;
        integer = integer * -1;
        
    }else if (integer == 0){
        return @"0";
    }
    
    while (integer){
        NSInteger remaining = integer % 10;
        output = [NSString stringWithFormat:@"%d%@", remaining, output];
        integer = integer / 10;
    }
    
    if (isNegative){
        output = [NSString stringWithFormat:@"-%@", output];
    }
    
    return output;
}

@end
