

#import <Foundation/Foundation.h>
#import "FindAns.h"
#import <QuartzCore/QuartzCore.h>
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDate *date =[NSDate date];
        NSDateFormatter *format=[[NSDateFormatter alloc]init];
        [format setDateFormat:@"hh:mm:ss"];
        NSString *datestring =[format stringFromDate:date];
        FindAnswer *find =[[FindAnswer alloc]init];
        int input;
        CFTimeInterval start_time=CACurrentMediaTime();
        printf("\nTime has started at %f",start_time);
        printf("\nEnter input for N:\n");
        scanf("%d",&input);
        
        int n=(int)pow(2,input);
        printf("Intger range between %d and %d:",0,n-1);
        
        
        int rst= [find search:0 and:n-1];
        printf("Your number is :%d",rst);
        
        CFTimeInterval end_time=CACurrentMediaTime();
        printf("\nTime has ended at %f",end_time);
        float elapse_time=end_time-start_time;
        printf("\n\nTotal elapse time is: %f",elapse_time);
        
    }
    return 0;
}
