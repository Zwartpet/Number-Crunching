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
        
        mpz_t temp;
        mpz_init(temp);
        
        mpz_t temp2;
        mpz_init(temp2);
        
        mpz_set_si(temp, 10);
        [math factorialWithInputNumber:&temp withReturnNumber:&temp2];
        [math factorialWithInputNumber:&temp2 withReturnNumber:&temp];
//        [math floorWithInputNumnber:&temp withReturnNumber:&temp2];
//        [math squareRootWithInputNumnber:&temp withReturnNumber:&temp2];
//        char *temp3;
//        mpz_get_str(temp3, 0, temp);
//        printf("|%s|\n", temp3);
        gmp_printf("%Zd\n", temp);

        
        
    }
    return 0;
}

