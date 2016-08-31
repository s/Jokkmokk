//
//  Stack.h
//  Jokkmokk
//
//  Created by Muhammed Said Özcan on 31/08/16.
//  Copyright © 2016 Muhammed Said Özcan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StackProtocol.h"

@interface Stack : NSObject <StackProtocol>

-(id)pop;
-(void)push:(id)objectToPush;
-(BOOL)isEmpty;
-(NSInteger)elementCount;
-(void)emptyStack;
-(void)printStack;

@end
