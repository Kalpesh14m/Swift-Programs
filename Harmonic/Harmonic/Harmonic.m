/*
 HarmonicValue -
 Created by Mohan Badgujar at BridgeLabz Solutions LLP  on 2/7/17.
 Copyright © 2017 BridgeLabz Solutions LLP . All rights reserved.
 
 Problem statement - Harmonic Number -
 
 Desc -> Prints the Nth harmonic number: 1/1 + 1/2 + ... + 1/N 
 I/P -> The Harmonic Value N. Ensure N != 0
 Logic -> compute 1/1 + 1/2 + 1/3 + ... + 1/N
 O/P -> Print the Nth Harmonic Value.
 
 */
#import <Foundation/Foundation.h>
#import "Harmonic.h"

@implementation Harmonic

-(void)GetInput
{
    NSLog(@"Enter the N value");
    scanf("%d",&num);
}
-(void)Calculate
{
    value=0;
    if(num==0)
        NSLog(@"enter number greaterthan 0");
    else
    {
        for(int i=1;i<=num;i++)
        {
            value = value+(1.0f/i);
        }
        NSLog(@"Harmonic value for =%d is =%f ",num,value);
    }
}
@end
