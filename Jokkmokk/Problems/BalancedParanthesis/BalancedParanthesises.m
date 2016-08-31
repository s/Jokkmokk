//
//  BalancedParanthesis.m
//  Jokkmokk
//
//  Created by Muhammed Said Özcan on 31/08/16.
//  Copyright © 2016 Muhammed Said Özcan. All rights reserved.
//

#import "BalancedParanthesises.h"
#import "Stack.h"

@interface BalancedParanthesises()
@property (nonatomic, strong) Stack *balancedParanthesisStack;
@property (nonatomic, strong) NSArray *pushChars;
@property (nonatomic, strong) NSArray *popChars;
@end

@implementation BalancedParanthesises

#pragma mark - Lifecycle
-(instancetype)init{
    self = [super init];
    if (self){
        self.balancedParanthesisStack = [Stack new];
        self.pushChars = @[ @"[", @"(", @"{" ];
        self.popChars = @[ @"]", @")", @"}" ];
    }
    return self;
}

- (BOOL)isParanthesisesBalanced:(NSString *)paranthesisesString{
    
    [self.balancedParanthesisStack emptyStack];
    
    if (!paranthesisesString.length){
        return YES;
    }
    
    NSInteger charIndex = 0;
    
    while (charIndex < paranthesisesString.length){
        unichar currentCharacter = [paranthesisesString characterAtIndex:charIndex];
        NSString *currentCharacterString = [NSString stringWithCharacters:&currentCharacter length:1];
        
        if ([_pushChars containsObject:currentCharacterString]){
            [_balancedParanthesisStack push:currentCharacterString];
        
        }else if([_popChars containsObject:currentCharacterString]){
            NSString *poppedChar = [_balancedParanthesisStack pop];
            NSString *oppositeParanthesis = [self getOppositeParanthesisOfParanthesis:currentCharacterString];
            
            if(nil != oppositeParanthesis && ![oppositeParanthesis isEqualToString:poppedChar]){
                return NO;
            }
        }
        
        charIndex++;
    }
    
    if([self.balancedParanthesisStack isEmpty]){
        return YES;
    }else{
        return NO;
    }
}

#pragma mark - Private Helper Methods
- (NSString *)getOppositeParanthesisOfParanthesis:(NSString *)paranthesis{
    
    if ([paranthesis isEqualToString:@"]"]) {
        return @"[";
    }else if ([paranthesis isEqualToString:@")"]) {
        return @"(";
    }else if ([paranthesis isEqualToString:@"}"]) {
        return @"{";
    }
    
    return nil;
}
@end
