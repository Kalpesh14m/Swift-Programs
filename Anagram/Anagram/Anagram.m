//
//  Anagram.m
//  Anagram
//
//  Created by BridgeLabz Solutions LLP on 24/12/16.
//  Copyright © 2016 BridgeLabz Solutions LLP. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Anagram.h"

@implementation Anagram



-(BOOL)getStrings:(NSString *)str1 and:(NSString *)str2
{
    
    if([str1 length]!=[str2 length])
    {
        return false;
    }
    int i,j;
    for(i=0;i<[str1 length];i++)
    {
        int a=0;
        int b=0;
        
        for(j=0;j<[str2 length];j++)
        {
            if([str1 characterAtIndex:i]==[str1 characterAtIndex:j])
            {
                a++;
            }
            if([str1 characterAtIndex:i]==[str2 characterAtIndex:j])
            {
                b++;
            }
            
        }
        
        if(b!=a)
        {
            return false;
        }
        
        
    }
    
    return true;
    
    
}
@end
