/*
 LeapYear -
  Created by BridgeLabz Solutions LLP  on 1/3/17.
 Copyright © 2017 BridgeLabz Solutions LLP . All rights reserved.
 
 Problem statement - Leap Year
 I/P -> Year, ensure it is a 4 digit number.
 Logic -> Determine if it is a Leap Year.
 O/P -> Print the year is a Leap Year or not.
 
 */

#import <Foundation/Foundation.h>
#import "LeapYear.h"

@implementation LeapYear

-(void) GetInput
{
    NSLog(@"\nEnter the year=");
    scanf("%d",&year);
}
-(void) calculate
{
    temp=year;
    while(temp>=1)
    {
        temp = temp/10;
        count++;
    }
    if(count==4)
    {
        if(year%4==0 && (year%100!=0 || year%400==0))
            NSLog(@"\nYear is leap year");
        else
            NSLog(@"\nYear is not leap year");
    }else
        NSLog(@"\nPlease Enter 4 Digit number only");
}
@end
