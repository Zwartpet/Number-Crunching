//
//  HNCNode.h
//  number-crunching
//
//  Created by John on 03/04/14.
//  Copyright (c) 2014 UVA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <gmp.h>

typedef NS_ENUM(NSInteger, OperationType) {
    None,
    SquareRoot,
    Factorial,
    Floor
};

@interface HNCNode : NSObject

@property (nonatomic) HNCNode *parent;
@property (nonatomic) HNCNode *squareRootNode;
@property (nonatomic) HNCNode *floorNode;
@property (nonatomic) HNCNode *factorialNode;
@property (nonatomic) mpf_t *value;
@property (nonatomic) OperationType type;

- (HNCNode *) initWithParent:(HNCNode *)parent value:(mpf_t *)value operationType:(OperationType)type;

@end
