//
//  FindCustomViews.m
//  Jokkmokk
//
//  Created by Muhammed Said Özcan on 03/09/16.
//  Copyright © 2016 Muhammed Said Özcan. All rights reserved.
//

#import "FindCustomViews.h"

@implementation FindCustomViews
+(NSArray *)findCustomViewsInRootView:(UIView *)rootView{
    NSArray *allSubviews = [FindCustomViews combineAllSubviewsInRootView:rootView combinedSubviews:@[]];
    NSMutableArray *customViews = [NSMutableArray array];
    
    for (id subview in allSubviews){
        if (![subview isMemberOfClass:[UILabel class]] ||
            ![subview isMemberOfClass:[UIButton class]] ||
            ![subview isMemberOfClass:[UIImageView class]] ||
            ![subview isMemberOfClass:[UITableView class]]){
            [customViews addObject:subview];
        }
    }
    return [customViews copy];
}

+(NSArray *)combineAllSubviewsInRootView:(UIView *)rootView combinedSubviews:(NSArray *)subviews{
    NSMutableArray *mutableCombinedArray = [NSMutableArray arrayWithArray:subviews];
    
    if(rootView.subviews.count > 0){
        for (id subview in rootView.subviews){
            [mutableCombinedArray addObject:subview];
            NSArray *subViewsOfSubview = [self combineAllSubviewsInRootView:subview combinedSubviews:[mutableCombinedArray copy]];
            [mutableCombinedArray addObjectsFromArray:subViewsOfSubview];
        }
    }
    
    return [mutableCombinedArray copy];
}
@end
