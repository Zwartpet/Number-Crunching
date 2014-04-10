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
    mpf_t start;
    mpf_init_set_si(start, startNumber);
    [self setStartNumber:startNumber];
    [self setEndNumber:endNumber];
    _root = [[HNCNode alloc] initWithParent:nil value:&start operationType:None];
    [queue enqueue:_root];
    [self fillTree];
    return self;
}

- (void) fillTree{
    HNCMath *math = [[HNCMath alloc] init];
    while ([queue size] != 0) {
        HNCNode *node = [queue dequeue];
        mpf_t   factorialValue;
        mpf_init(factorialValue);
        [math factorialWithInputNumber:[node value] withReturnNumber:&factorialValue];
        HNCNode *factorialNode = [[HNCNode alloc] initWithParent:node value:&factorialValue operationType:Factorial];
//        HNCNode *squareRootNode
//        HNCNode *floorNode
    }
}

@end
