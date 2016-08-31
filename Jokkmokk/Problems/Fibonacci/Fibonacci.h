//
//  Fibonacci.h
//  Jokkmokk
//
//  Created by Muhammed Said Özcan on 31/08/16.
//  Copyright © 2016 Muhammed Said Özcan. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, FibonacciInitType){
    FibonacciInitTypeLoop,
    FibonacciInitTypeRecursion
};

@interface Fibonacci : NSObject

- (instancetype)initWithMode:(FibonacciInitType)mode;
- (NSInteger)findNthNumber:(NSInteger)nthNumber;
@end
