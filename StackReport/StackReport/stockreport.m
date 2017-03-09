/*
 Anagram :-
 
 Created by Mohan Badgujar at BridgeLabz Solutions LLP  on 2/7/17.
 Copyright © 2017 BridgeLabz Solutions LLP . All rights reserved.
 
 **********************Stock Report*********************
 Desc -> Write a program to read in Stock Names, Number of Share, Share Price. Print a Stock Report with total value of each Stock and the total value of Stock.
 I/P -> N number of Stocks, for Each Stock Read In the Share Name, Number of Share, and Share Price
 Logic -> Calculate the value of each stock and the total value
 O/P -> Print the Stock Report.
 Hint -> Create Stock and Stock Portfolio Class holding the list of Stocks read from the input file. Have functions in the Class to calculate the value of each stock and the value of total stocks
 */

#import <Foundation/Foundation.h>
#import "stockreport.h"

@implementation StockReport

int count=0;
int total_stock=0;

-(void)initarray
{
    stockname=[[NSMutableArray alloc]init];
}

//read in Stock Names, Number of Share, Share Price
-(void)stockinfo:(NSString *)nameofshare numShare:(int)no_of_share valueShare:(int)share_value
{
    [stockname addObject:nameofshare];
    arr_no_of_share[count]=no_of_share;
    arr_share_value[count]=share_value;
    count++;
}

//Print a Stock Report with total value of each Stock.
-(void)calculatestock
{
    for(int i=0;i<count;i++)
    {
        value_stock[i]=arr_share_value[i]*arr_no_of_share[i];
        NSLog(@"Stock %d value is:%d",i+1,value_stock[i]);
    }
}

-(void)totalstock
{
    for(int i=0;i<count;i++)
    {
        total_stock=total_stock+value_stock[i];
    }
}

//Print a Stock Report with total value of each Stock and the total value of Stock.
-(void)displaystock
{
    printf("*************************Stock inforamation*************************");
    printf("\nTotal stock value=%d\n",total_stock);
}

@end
