/*
 
 Binary
 Created by BridgeLabz Solutions LLP  on 2/9/17.
 Copyright © 2017 BridgeLabz Solutions LLP . All rights reserved.
 
 *****************Binary Search the Word from Word List*******************
 Desc -> Read in a list of words from File. Then prompt the user to enter a word to search the list. The program reports if the search word is found in the list.
 I/P -> read in the list words comma separated from a File and then enter the word to be searched
 Logic -> Use Arrays to sort the word list and then do the binary search
 O/P -> Print the result if the word is found or not
 
 */
#import <Foundation/Foundation.h>
#import "binary.h"

@implementation Binary

-(void)BinarySort{
    int n;
    int item;
    NSLog(@"\nEnter the no of element you want to insert=");
    scanf("%d",&n);
    int arr[n];
    
    NSLog(@"Enter elements=");
    for(int i=0;i<n;i++)
    {
        scanf("%d",&arr[i]);
    }
    
    NSLog(@"Enter the element you want to search=");
    scanf("%d",&item);
    
    int start=0;
    int end=n-1;
    int middle=(start+end)/2;
    
    while(item!=arr[middle] && start<=end)
    {
        if(item>arr[middle])
            start = middle+1;
        else
            end = middle-1;
        
        middle = (start+end)/2;
    }
    
    if(item==arr[middle])
        NSLog(@"Element found at index :%d",(middle+1));
    else
        NSLog(@"Element not found...");
}
@end
