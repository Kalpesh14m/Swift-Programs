
#import <Foundation/Foundation.h>
#import "Utility.h"

@implementation Utilty
int location;
int location2;
int data[max];

-(int)BinarySearchInteger:(int [])input andKey:(int)item{
    
    int temp,i,j;
    
    for(i=0;i<max-1;i++)
    {
        for(j=0;j<max-i-1;j++){
            if(input[j]>input[j+1])
            {
                temp=input[j];
                input[j]=input[j+1];
                input[j+1]=temp;
                
            }
        }
        
    }
    printf("\nGiven Array :");
    for (i=0; i<max; i++) {
        printf("%d\t",input[i]);
    }
    
    location=-1;
    int low=0;
    int high=max-1;
    int mid;
    while(low<=high)
    {
        mid=low+(high-low)/2;
        if(input[mid]>item)
        {
            high=mid-1;
            mid=low+(high-low)/2;
        }
        else if(input[mid]<item){
            low=mid+1;
            mid=low+(high-low)/2;
            
        }
        else if(input[mid]==item){
            location=mid;
            return location;
            
        }
        
        
    }
    
    return location;
    
}
-(int)BinarySearchString{
    char character[20],key1[20];
    NSString *string[max];
    int i;
    
    NSMutableArray *temparr=[[NSMutableArray alloc]init];
    
    printf("\nEnter 6 strings:\n");
    for (i=0; i<max; i++) {
        scanf("%s",character);
        NSString *str=[NSString stringWithFormat:@"%s",character];
        [temparr addObject:str];
    }
    temparr=(NSMutableArray*) [temparr sortedArrayUsingSelector:@selector(caseInsensitiveCompare:)];
    
    for (i=0; i<max; i++) {
        string[i]=(NSString*)[temparr objectAtIndex:i];
    }
    printf("\nString Array:\n");
    for (i=0; i<max; i++) {
        NSLog(@"%@",string[i]);
    }
    printf("\nEnter key:");
    scanf("%s",key1);
    NSString *key=[NSString stringWithFormat:@"%s",key1];
    
    location2=-1;
    int low=0;
    int high=max-1;
    int mid;
    while(low<=high)
    {
        mid=low+(high-low)/2;
        if(string[mid]>key)
        {
            high=mid-1;
            mid=low+(high-low)/2;
        }
        else if(string[mid]<key){
            low=mid+1;
            mid=low+(high-low)/2;
            
        }
        if(string[mid]==key)
        {
            location2=mid;
            return location2;
            
        }
    }
    
    return location2;
    
}
-(void)InsertionSortInteger:(int[])input{
    int i;
    for(i=1;i<10;i++)
    {
        int value=input[i];
        int holep=i;
        while (holep>0 && input[holep-1]>value)
        {
            input[holep]=input[holep-1];
            holep=holep-1;
        }
        input[holep]=value;
    }
    printf("\nSorted Array:\n");
    for (i=0; i<max; i++) {
        printf("%d\t",input[i]);
    }
}
-(void)InsertionSortString{
    char character[20];
    NSString *string[max];
    int i;
    
    printf("\nEnter 6 strings:\n");
    for (i=0; i<max; i++) {
        scanf("%s",character);
        NSString *str=[NSString stringWithFormat:@"%s",character];
        string[i]=str;
    }
    
    NSComparisonResult result;
    
    for(i=1;i<max;i++)
    {
        NSString *key1=string[i];
        
        int j=i-1;
        
        while (j>=0)
        {
            result=[key1 compare:string[j]];
            if (result>0) {
                break;
            }
            string[j+1]=string[j];
            j--;
        }
        string[j+1]=key1;
        
        
    }
    
    printf("\nSorted Array:\n");
    for (i=0; i<max; i++) {
        NSLog(@"%@\t",string[i]);
    }
    
}
-(void)BoubleSortInteger:(int[])input{
    
    int temp,i,j;
    
    for(i=0;i<max-1;i++)
    {
        for(j=0;j<max-i-1;j++){
            if(input[j]>input[j+1])
            {
                temp=input[j];
                input[j]=input[j+1];
                input[j+1]=temp;
                
            }
        }
        
    }
    
    printf("\nSorted Array:");
    for (i=0; i<max; i++) {
        printf("%d\t",input[i]);
    }
    
}
-(void)BoubleSortString{
    char character[20];
    NSComparisonResult result;
    NSString *string[max];
    int i,j;
    NSString *temp;
    printf("\nEnter 6 strings:\n");
    for (i=0; i<max; i++) {
        scanf("%s",character);
        NSString *str=[NSString stringWithFormat:@"%s",character];
        string[i]=str;
    }
    [string[0] compare:string[1]];
    
    for(i=0;i<max-1;i++)
    {
        for(j=0;j<max-i-1;j++){
            result=[string[j] compare:string[j+1]];
            if(result>0)                    //string[j]>string[j+1]
            {
                temp=string[j];
                string[j]=string[j+1];
                string[j+1]=temp;
                
            }
        }
        
    }
    printf("\nSorted String Array:\n");
    for (i=0; i<max; i++) {
        NSLog(@"%@\t",string[i]);
    }
    
    
}
@end
