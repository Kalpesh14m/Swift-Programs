//
//  Factor.m
//  Program6
//
//  Created by BridgeLabz Solutions LLP on 24/12/16.
//  Copyright © 2016 BridgeLabz Solutions LLP. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Factor.h"


@implementation Factor

-(void)findFactor:(int)n{
    while(n%2==0)
    {
        NSLog(@"\t%d",2);
        n=n/2;
    }
    double h=(double)n;
    
    int i;
    for(i=3;i<h;i+=2)
    {
        while(n%i==0)
        {
            NSLog(@"\t%d",i);
            n=n/i;
        }
    }
    
    if(n>2)
    {
        NSLog(@"\t%d",n);
    }
    
}

@end
