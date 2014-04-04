//
//  HNCQueue.h
//  number-crunching
//
//  Created by John on 03/04/14.
//  Copyright (c) 2014 UVA. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HNCQueue : NSObject {
    NSMutableArray* m_array;
}

- (void)enqueue:(id)anObject;
- (id)dequeue;
- (void)clear;
- (int)size;

@property (nonatomic, readonly) int count;

@end
