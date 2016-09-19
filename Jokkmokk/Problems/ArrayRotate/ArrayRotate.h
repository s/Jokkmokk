//
//  ArrayRotate.h
//  Jokkmokk
//
//  Created by Muhammed Said Özcan on 10/09/16.
//  Copyright © 2016 Muhammed Said Özcan. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, RotationDirection){
    RotationDirectionLeft,
    RotationDirectionRight
};

typedef NS_ENUM(NSInteger, RotationType){
    RotationTypeTemp,
    RotationTypeOneStepAtATime,
    RotationTypeBest
};

@interface ArrayRotate : NSObject
-(NSArray <NSNumber*> *)rotateArray:(NSArray *)array byNTimes:(NSInteger)n withRotationMethod:(RotationType)method toDirection:(RotationDirection)direction;
@end
