//
//  HNCTree.h
//  number-crunching
//
//  Created by John on 03/04/14.
//  Copyright (c) 2014 UVA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HNCQueue.h"
#import "HNCNode.h"

@interface HNCTree : NSObject {
    HNCQueue* queue;
}

@property (nonatomic) HNCNode *root;
@property (nonatomic) int startNumber;
@property (nonatomic) int endNumber;

@end
