//
//  Flip.m
//  Program2
//
//  Created by BridgeLabz Solutions LLP on 24/12/16.
//  Copyright © 2016 BridgeLabz Solutions LLP. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Flip.h"
@implementation Flip

-(void)getflip:(int)no_of_flips
{
    flip=no_of_flips;
    NSLog(@"Flip value :%d",flip);
}
-(void)calculate
{
    int i;
    
    tail=0;
    head=0;
    for(i=0;i<flip;i++)
    {
        
        float random = rand()/(float)RAND_MAX;
        NSLog(@"Random :%f",random);
        if(random<0.5)
        {
            tail++;
            
        }
        else if(random>=0.5)
        {
            head++;
        }
    }
    
    [self disp_percentage:tail and:head];
}
-(void)disp_percentage:(int)tailc and:(int)headc
{
    float tail_per=0;
    float head_per=0;
    
    tail_per=((float)tailc/(float)flip);
    head_per=((float)headc/(float)flip);
    NSLog(@"Count Tail :%d",tailc);
    NSLog(@"Count Head :%d",headc);
    NSLog(@"Percentage of Tail :%.2f %",tail_per*100);
    NSLog(@"Percentage of Head :%.2f %",head_per*100);
}
@end
