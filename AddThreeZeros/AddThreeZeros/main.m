//
//  main.m
//  AddThreeZeros
//
//  Created by gaurav on 02/03/17.
//  Copyright © 2017 gaurav. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        NSLog(@"Enter total no");
        int n;
        int arr[10];
        scanf("%d",&n);
        NSLog(@"Enter Total Nos");
        for (int i = 0; i < n; i++)
        {
            scanf("%d",&arr[i]);
        }
        for (int i = 0; i < n; i++)
        {
            for (int j = i + 1; j < n; j++)
            {
                for (int k = j + 1; k < n; k++)
                {
                    if (arr[i] + arr[j] + arr[k] == 0)
                    {
                        NSLog(@"Given pair is Tripl:= %d %d %d",arr[i],arr[j],arr[k]);
                    }
                    
                }
            }
        }
    }
    return 0;
}

