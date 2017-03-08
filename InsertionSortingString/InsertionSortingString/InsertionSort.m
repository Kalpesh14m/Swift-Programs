
#import "Header.h"
#import <Foundation/Foundation.h>

@implementation InsertionSort


-(id)init{
    self =[super init];
    if (self)
    {
        data=[[NSMutableArray alloc]init];
    }
    return self;
}
-(void)getString:(NSMutableArray*)array{
    data=[array copy];
    
    [self display];
    [self insertion_sort:array];
    
}

-(void)display{
    NSLog(@"Data Count:%d",(int)[data count]);
    NSLog(@"Data:%@",data);
}

-(void)insertion_sort:(NSMutableArray*)array{
    int i;
    NSString *string[[array count]];
    for (i=0; i<array.count; i++) {
        string[i]=(NSString*)[array objectAtIndex:i];
    }
    
    
    NSComparisonResult result;
    
    for(i=1;i<[array count];i++)
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
    for (i=0; i<data.count; i++) {
        NSLog(@"%@",string[i]);
    }
    
    
}

@end

