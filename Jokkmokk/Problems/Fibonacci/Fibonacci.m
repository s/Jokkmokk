//
//  Fibonacci.m
//  Jokkmokk
//
//  Created by Muhammed Said Özcan on 31/08/16.
//  Copyright © 2016 Muhammed Said Özcan. All rights reserved.
//

#import "Fibonacci.h"

@interface Fibonacci()
@property (nonatomic) FibonacciInitType mode;
@end

@implementation Fibonacci

- (instancetype)initWithMode:(FibonacciInitType)mode{
    self = [super init];
    if (self){
        self.mode = mode;
    }
    return self;
}

- (NSInteger)findNthNumber:(NSInteger)nthNumber{
    if (FibonacciInitTypeRecursion == self.mode){
        return [self findNthNumberWithRecursion:nthNumber];
    }else{
        return [self findNthNumberWithLoop:nthNumber];
    }
}

- (NSInteger)findNthNumberWithRecursion:(NSInteger)nthNumber{
    if (nthNumber == 1 || nthNumber == 2){
        return 1;
    }else{
        return [self findNthNumber:nthNumber-1] + [self findNthNumber:nthNumber-2];
    }
}

- (NSInteger)findNthNumberWithLoop:(NSInteger)nthNumber{
    
    NSInteger sum = 0;
    for (NSInteger index = 1; index < nthNumber+1; index++){
        if (index == 1 || index == 2){
            sum += 1;
        }else{
            sum += (index - 1) + (index - 2);
        }
    }
    
    return sum;
}

@end
