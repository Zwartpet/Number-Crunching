//
//  HNCMath.h
//  number-crunching
//
//  Created by John on 03/04/14.
//  Copyright (c) 2014 UVA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <math.h>
#import <gmp.h>

@interface HNCMath : NSObject
- (void) floorWithInputNumnber:(mpf_t*) inputNumber withReturnNumber:(mpz_t*) returnNumber;
- (void) squareRootWithInputNumnber:(mpf_t*) inputNumber withReturnNumber:(mpf_t*) returnNumber;
- (void) factorialWithInputNumber:(mpz_t*) inputNumber withReturnNumber:(mpz_t*) returnNumber;
@end
