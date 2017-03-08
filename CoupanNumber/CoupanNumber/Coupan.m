//
//  Coupon.m
//  CouponNumber
//
//  Created by BridgeLabz Solutions LLP on 23/12/16.
//  Copyright © 2016 BridgeLabz Solutions LLP. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Coupan.h"
#define RAND_FROM_TO(min, max) (min + arc4random_uniform(max - min + 1))
@implementation Coupon

+(int)getRandom:(int)number{
    
    int r=RAND_FROM_TO(0,number);
    return r;
}

@end
