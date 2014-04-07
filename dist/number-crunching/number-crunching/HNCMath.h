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
- (int) floorDouble:(double) inputNumber;
- (double) squareRoot:(double) inputNumber;
- (int) factorial:(int) inputNumber;

- (void) test;
@end
