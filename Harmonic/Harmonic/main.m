//
//  main.m
//  HarmonicValue
//
//  Created by BridgeLabz Solutions LLP  on 2/7/17.
//  Copyright © 2017 BridgeLabz Solutions LLP . All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Harmonic.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        Harmonic *hm =[[Harmonic alloc]init];
        [hm GetInput];
        [hm Calculate];
    }
    return 0;
}
