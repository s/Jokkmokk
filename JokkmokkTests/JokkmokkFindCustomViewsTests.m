//
//  JokkmokkIsCustomViewTests.m
//  Jokkmokk
//
//  Created by Muhammed Said Özcan on 03/09/16.
//  Copyright © 2016 Muhammed Said Özcan. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "CustomView.h"
#import "MyImageView.h"
#import "FindCustomViews.h"

@interface JokkmokkFindCustomViewsTests : XCTestCase
@property (nonatomic, strong) UIView *rootView;
@end

@implementation JokkmokkFindCustomViewsTests

- (void)setUp {
    [super setUp];
    UIView *mainView = [UIView new];
    UIView *subview = [UIView new];
    UILabel *label = [UILabel new];
    CustomView *customView = [CustomView new];
    UIImageView *imageView = [UIImageView new];
    UITableView *tableView = [UITableView new];
    MyImageView *myImageView = [MyImageView new];
    
    
    [mainView addSubview:label];
    [mainView addSubview:customView];
    [subview addSubview:imageView];
    [subview addSubview:tableView];
    [mainView addSubview:subview];
    [mainView addSubview:myImageView];
    
    self.rootView = mainView;
}

- (void)testFindCustomViews {
    NSArray *customSubviews = [FindCustomViews findCustomViewsInRootView:self.rootView];
}

@end
