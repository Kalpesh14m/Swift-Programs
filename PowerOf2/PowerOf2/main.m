//
//  main.m
//  PowerOf2
//
//  Created by BridgeLabz Solutions LLP  on 2/7/17.
//  Copyright © 2017 BridgeLabz Solutions LLP . All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PowerOf2.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        PowerOf2 *pw = [[PowerOf2 alloc]init];
        [pw GetInput];
        [pw Calculate];
    }
    return 0;
}
