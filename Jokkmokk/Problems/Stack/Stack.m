//
//  Stack.m
//  Jokkmokk
//
//  Created by Muhammed Said Özcan on 31/08/16.
//  Copyright © 2016 Muhammed Said Özcan. All rights reserved.
//

#import "Stack.h"

@interface Stack()
@property (nonnull, nonatomic, strong) NSMutableArray *stack;
@end

@implementation Stack

#pragma mark - Lifecycle
-(instancetype)init{
    self = [super init];
    if (self){
        self.stack = [NSMutableArray array];
    }
    return self;
}

#pragma mark - StackProtocol Methods
-(id)pop{
    if (self.stack.count){
        id lastObject = self.stack.lastObject;
        [self.stack removeLastObject];
        return lastObject;
    }
    return nil;
}

-(void)push:(id)objectToPush{
    if (nil != objectToPush){
        [self.stack addObject:objectToPush];
    }
}

-(BOOL)isEmpty{
    return self.stack.count == 0;
}

-(NSInteger)elementCount{
    return self.stack.count;
}

-(void)emptyStack{
    self.stack = [NSMutableArray array];
}

-(void)printStack{
    NSLog(@"%@", self.stack);
}
@end
