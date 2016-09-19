//
//  ArrayRotate.m
//  Jokkmokk
//
//  Created by Muhammed Said Özcan on 10/09/16.
//  Copyright © 2016 Muhammed Said Özcan. All rights reserved.
//

#import "ArrayRotate.h"

@implementation ArrayRotate
-(NSArray <NSNumber*> *)rotateArray:(NSArray <NSNumber*> *)array byNTimes:(NSInteger)n withRotationMethod:(RotationType)method toDirection:(RotationDirection)direction{
    
    if( 0 == array.count ){
        return nil;
        
    }else if ( 1 == array.count ){
        return array;
        
    }
    
    if (RotationTypeTemp == method){
        return [self rotateArrayWithTemp:array byNTimes:n toDirection:direction];
    
    }else if (RotationTypeOneStepAtATime == method){
        return [self rotateArrayOneStepAtATime:array byNTimes:n toDirection:direction];
    
    }else if (RotationTypeBest == method){
        
    }
    
    return nil;
}

-(NSArray <NSNumber*> *)rotateArrayWithTemp:(NSArray <NSNumber*> *)array byNTimes:(NSInteger)n toDirection:(RotationDirection)direction{
    
    NSMutableArray *tempArray = [NSMutableArray arrayWithCapacity:array.count];
    for(NSInteger index=0; index<array.count; index++){
        tempArray[index] = [NSNull null];
    }
    
    for(NSInteger index=0; index<array.count; index++){
        NSInteger newIndex;
        
        if (RotationDirectionLeft == direction){
            newIndex = index - n;
        }else{
            newIndex = index + n;
        }
        
        if (newIndex < 0){
            newIndex += array.count;
        }else if(newIndex >= array.count){
            newIndex = newIndex % array.count;
        }
        [tempArray replaceObjectAtIndex:newIndex withObject:array[index]];
    }
    
    return [tempArray copy];
}

-(NSArray <NSNumber*> *)rotateArrayOneStepAtATime:(NSArray <NSNumber*> *)array byNTimes:(NSInteger)n toDirection:(RotationDirection)direction{
    
    NSMutableArray <NSNumber *> *mutableArray = [NSMutableArray arrayWithArray:array];
    
    if(n < 0){
        n *= -1;
        if (RotationDirectionLeft == direction){
            direction = RotationDirectionRight;
        }else{
            direction = RotationDirectionLeft;
        }
    }
    
    if (RotationDirectionLeft == direction){
        
        for(NSInteger index=0; index<n; index++){
            mutableArray = [self rotateArrayLeftByOne:mutableArray];
        }
        
    }else{
        
        for(NSInteger index=0; index<n; index++){
            mutableArray = [self rotateArrayRightByOne:mutableArray];
        }
        
    }
    
    return [mutableArray copy];
}

-(NSMutableArray <NSNumber *> *)rotateArrayRightByOne:(NSMutableArray <NSNumber *>*)array{
    NSInteger count = array.count;
    NSNumber *lastElement = array[count-1];
    
    for(NSInteger index=array.count-1; index>0; index--){
        array[index] = array[index-1];
    }
    
    array[0] = lastElement;
    return array;
}

-(NSMutableArray <NSNumber *> *)rotateArrayLeftByOne:(NSMutableArray <NSNumber *>*)array{
    NSNumber *firstElement = array[0];

    for (NSInteger index=0; index<array.count-1; index++){
        array[index] = array[index+1];
    }
    
    NSInteger count = array.count;
    array[count -1] = firstElement;
    
    return array;
}
@end
