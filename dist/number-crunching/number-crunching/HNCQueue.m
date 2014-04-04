//
//  HNCQueue.m
//  number-crunching
//
//  Created by John on 03/04/14.
//  Copyright (c) 2014 UVA. All rights reserved.
//

#import "HNCQueue.h"

@implementation HNCQueue

- (id)init
{
    if( self=[super init] )
    {
        m_array = [[NSMutableArray alloc] init];
        _count = 0;
    }
    return self;
}

- (void)enqueue:(id)anObject
{
    [m_array addObject:anObject];
    _count = (int) m_array.count;
}

- (id)dequeue
{
    id obj = nil;
    if(m_array.count > 0)
    {
        obj = [m_array objectAtIndex:0];
        [m_array removeObjectAtIndex:0];
        _count = (int) m_array.count;
    }
    return obj;
}

- (int)size
{
    return _count;
}

- (void)clear
{
    [m_array removeAllObjects];
    _count = 0;
}

@end
