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

@end