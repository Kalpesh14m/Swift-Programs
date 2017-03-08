/*
 PowerOf2 -
 
 Created by BridgeLabz Solutions LLP  on 2/7/17.
 Copyright © 2017 BridgeLabz Solutions LLP . All rights reserved.
 
 Power of 2 -
 
 Desc -> This program takes a command-line argument N and prints a table of the powers of 2 that are less than or equal to 2^N.
 I/P -> The Power Value N. Only works if 0 <= N < 31 since 2^31 overflows an int
 Logic -> repeat until i equals N.
 O/P -> Print the year is a Leap Year or not.
 */

#import <Foundation/Foundation.h>
#import "PowerOf2.h"

@implementation PowerOf2

-(void)GetInput
{
    NSLog(@"Please enter the number=");
    scanf("%d",&number);
}
-(void)Calculate
{
    if(number>=0 && number<31)
    {
        result=1;
        
        for(int i=0;i<=number;i++)
        {
            NSLog(@"2^%d is :%d",i,result);
            
            result=(result*2);
        }
    }else
        NSLog(@"Please enter correct number");
}
@end
