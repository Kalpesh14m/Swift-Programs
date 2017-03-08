//
//  main.m
//  Anagram
//
//  Created by BridgeLabz Solutions LLP on 24/12/16.
//  Copyright © 2016 BridgeLabz Solutions LLP. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Anagram.h"
int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        char str1[20],str2[20];
        NSLog(@"\nEnter first string:");
        scanf("%s",str1);
        NSLog(@"\nEnter second string:");
        scanf("%s",str2);
        NSString *string1 = [NSString stringWithFormat:@"%s",str1];
        NSString *string2 = [NSString stringWithFormat:@"%s",str2];
        NSLog(@"Strings are:\n%@ \n%@",string1,string2);
        Anagram *an=[[Anagram alloc]init];
        bool result=[an getStrings:string1 and:string2];
        if(result==1)
        {
            NSLog(@"Result:Strings are Anagram..");
        }
        else if(result==0)
        {
            NSLog(@"Result:Strings are not Anagram..");
        }
    }
    return 0;
}
