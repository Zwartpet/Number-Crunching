//
//  main.m
//  number-crunching
//
//  Created by Tony Abidi on 03/04/14.
//  Copyright (c) 2014 UVA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HNCNode.h"
#import "HNCMath.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
//        double num = 4;
//        HNCMath *math = [[HNCMath alloc] init];
//        double intNum = [math squareRoot:num];
//        NSLog(@"Num: %f", intNum);
        
//        HNCQueue *queue = [[HNCQueue alloc] init];
//        [queue enqueue:@"1"];
//        [queue enqueue:@"2"];
//        [queue enqueue:@"3"];
//        [queue enqueue:@"4"];
//        [queue enqueue:@"5"];
//        [queue dequeue];
//        NSLog(@"%i", [queue size]);
        
        HNCNode *node = [[HNCNode alloc] initWithParent:nil value:2 operationType:Factorial];
        
        HNCMath *math = [[HNCMath alloc] init];
        [math test];
        
    }
    return 0;
}

