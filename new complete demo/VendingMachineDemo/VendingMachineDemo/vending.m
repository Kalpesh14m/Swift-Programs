#import <Foundation/Foundation.h>
#import "vending.h"

@implementation VendingMachine

int i=0;
int Rs;

-(void)notesReturn
{
    
    int NSArray[] = {1000,500,100,50,20,10,5,2,1};
    
    NSLog(@"\nEnter the change Rs :");
    scanf("%d",&Rs);
    
    while(Rs>0)
    {
        int count=0;
        
        while(NSArray[i]<=Rs && Rs!=0)
        {
            Rs = Rs-NSArray[i];
            count++;
        }
        
        if(count>0)
        {
            NSLog(@"Minimum Note needed to give the change :%d \nRs Notes that would given in the Change =%d\n",count,NSArray[i]);
        }
        i++;
    }
}
@end
