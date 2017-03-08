/*
 Created by BridgeLabz Solutions LLP  on 1/3/17.
 Copyright © 2017 BridgeLabz Solutions LLP . All rights reserved.
 ********************Bubble Sort***************************
 Desc -> Reads in integers prints them in sorted order using Bubble Sort
 I/P -> read in the list ints
 O/P -> Print the Sorted List
 
 */
#import <Foundation/Foundation.h>
#import "bubble.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int n;
        int input;
        NSLog(@"Enter the no of element you want to insert=");
        scanf("%d",&n);
        int arr1[n];
        NSLog(@"Enter Elements:");
        for(int i=0;i<n;i++)
        {
            scanf("%d",&input);
            arr1[i]=input;
        }
        
        bubble *b = [[bubble alloc]init];
        [b sort:arr1 andNum:n];
    }
    return 0;
}
