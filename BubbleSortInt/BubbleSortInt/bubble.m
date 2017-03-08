//  bubble.m
//  Bubble
//  Created by BridgeLabz Solutions LLP  on 1/3/17.
//  Copyright © 2017 BridgeLabz Solutions LLP . All rights reserved.

#import <Foundation/Foundation.h>
#import "bubble.h"

@implementation bubble

/*-(void)GetInput{
 
 NSLog(@"Enter the no of element you want to insert=");
 scanf("%d",&n);
 int arr[n];
 NSLog(@"Enter Elements:");
 for(int i=0;i<n;i++)
 {
 scanf("%d",&input);
 arr[i]=input;
 }
 // [self sort:arr];
 }*/
-(void)sort:(int[])arr andNum:(int)n
{
    for(int pass=1;pass<=n-1;pass++)
    {
        for(int i=0;i<n-pass;i++)
        {
            if(arr[i]>arr[i+1])
            {
                int temp=arr[i];
                arr[i]=arr[i+1];
                arr[i+1]=temp;
            }
        }
    }
    NSLog(@"\nSorted element are=");
    for(int i=0;i<n;i++)
    {
        NSLog(@"%d",arr[i]);
    }
}
@end
