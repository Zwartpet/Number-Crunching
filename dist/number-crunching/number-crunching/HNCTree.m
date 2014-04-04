//
//  HNCTree.m
//  number-crunching
//
//  Created by John on 03/04/14.
//  Copyright (c) 2014 UVA. All rights reserved.
//

#import "HNCTree.h"

@implementation HNCTree

- (HNCTree *) initWithStartNumber:(int)startNumber endNumber:(int)endNumber {
    self = [super init];
    [self setStartNumber:startNumber];
    [self setEndNumber:endNumber];
    _root = [[HNCNode alloc] initWithParent:nil value:startNumber operationType:None];
    
    return self;
}

@end
