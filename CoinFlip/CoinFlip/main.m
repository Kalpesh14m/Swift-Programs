//
//  main.m
//  Program2
//
//  Created by BridgeLabz Solutions LLP on 24/12/16.
//  Copyright © 2016 BridgeLabz Solutions LLP. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Flip.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Flip *fp = [[Flip alloc]init];
        printf("Enter No of Flips:\n");
        int numberf=0;
        scanf("%d",&numberf);
        NSLog(@"Entered number: :%d",numberf);
        [fp getflip:numberf];
        [fp calculate];
    }
    return 0;
}
