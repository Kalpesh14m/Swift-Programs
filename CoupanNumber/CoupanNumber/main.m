//
//  main.m
//  CouponNumber
//
//  Created by BridgeLabz Solutions LLP on 23/12/16.
//  Copyright © 2016 BridgeLabz Solutions LLP. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Coupan.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Coupon *cp=[[Coupon alloc]init];
        int n,random;
        int count=0;
        //bool set=false;
        NSString *ranstr;
        NSMutableArray *stock = [[NSMutableArray alloc]init];
        NSLog(@"\nEnter Number:");
        scanf("%d",&n);
        int i=0;
        while(i<n) {
            random= [Coupon getRandom:n];
            ranstr=[NSString stringWithFormat:@"%d",random];
            if ([stock count]==0) {
                count++;
                [stock addObject:ranstr];
            }
            else if([stock count]>0)
            {
                
                if([stock containsObject:ranstr]){
                    
                }
                else if (![stock containsObject:ranstr]){
                    [stock addObject:ranstr];
                    count++;
                }
            }
            i++;
        }
        NSLog(@"\nTotal Number:%d\n",count);
        NSLog(@"\nRandom Numbers are:%@",stock);
    }
    return 0;
}
