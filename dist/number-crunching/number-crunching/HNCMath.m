//
//  HNCMath.m
//  number-crunching
//
//  Created by John on 03/04/14.
//  Copyright (c) 2014 UVA. All rights reserved.
//

#import "HNCMath.h"

@implementation HNCMath


- (int) floorDouble:(double) inputNumber {
    return floor(inputNumber);
}

- (double) squareRoot:(double) inputNumber {
    return sqrt(inputNumber);
}

- (int) factorial:(int) inputNumber {
    if (inputNumber == 1) {
        return 1;
    }else{
        return [self factorial:inputNumber-1] * inputNumber;
    }
  
}

- (void) test {
    mpf_t bla;
    mpf_init_set_str(bla, "2349872863152304820841302481230481302412349123641237461237894612387461289374612983461298346129384612398461239846123894612398478746234", 0);
//    mpf_get_d(bla);
    gmp_printf("%F", mpf_get_d(bla));

}

@end