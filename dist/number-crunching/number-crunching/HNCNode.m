//
//  HNCNode.m
//  number-crunching
//
//  Created by John on 03/04/14.
//  Copyright (c) 2014 UVA. All rights reserved.
//

#import "HNCNode.h"

@implementation HNCNode

- (HNCNode *) initWithParent:(HNCNode *)parent value:(int)value operationType:(OperationType)type {
    self = [super init];
    [self setParent:parent];
    [self setValue:value];
    [self setType:type];
    
    return self;
}

@end
