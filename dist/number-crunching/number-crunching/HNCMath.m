//
//  HNCMath.m
//  number-crunching
//
//  Created by John on 03/04/14.
//  Copyright (c) 2014 UVA. All rights reserved.
//

#import "HNCMath.h"

@implementation HNCMath


- (void) floorWithInputNumnber:(mpf_t*) inputNumber withReturnNumber:(mpz_t*) returnNumber {
    mpf_t number;
    mpf_init_set(number, *inputNumber);
    mpf_floor(number, *inputNumber);
    mpz_set_f(*returnNumber, number);
}

- (void) squareRootWithInputNumnber:(mpf_t*) inputNumber withReturnNumber:(mpf_t*) returnNumber {
    
    mpf_sqrt(*returnNumber, *inputNumber);
}

- (void) factorialWithInputNumber:(mpz_t*) inputNumber withReturnNumber:(mpz_t*) returnNumber {
    
    // number is used as the input because we dont want to change inputNumber value
    mpz_t number;
    mpz_init_set(number, *inputNumber);
    
    // total contains the total value of the calculation
    mpz_t total;
    mpz_init_set_str(total, "1", 0);
    
    // represents one in mpz_t
    mpz_t one;
    mpz_init_set_str(one, "1", 0);
    
    while (mpz_cmp(number, one)) {
        mpz_mul(total, number, total);
        mpz_sub_ui(number, number, 1);
    }
    mpz_set(*returnNumber , total);
}

@end