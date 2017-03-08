//  main.m
//  LeapYear
//  Created by BridgeLabz Solutions LLP  on 1/3/17.
//  Copyright © 2017 BridgeLabz Solutions LLP . All rights reserved.

#import <Foundation/Foundation.h>
#import "LeapYear.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        LeapYear *lp=[[LeapYear alloc]init];
        [lp GetInput];
        [lp calculate];
    }
    return 0;
}
