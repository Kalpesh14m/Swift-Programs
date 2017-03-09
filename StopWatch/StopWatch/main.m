#import <Foundation/Foundation.h>
#import "stopwatch.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        char input[12],input2[12];
        NSString *strstart=@"1";
        NSString *strstop=@"2";
        StopWatch *watch=[[StopWatch alloc]init];
        
    start:  NSLog(@"\nEnter '1' To Start:");
        scanf("%s",input);
        NSString *inputfirst=[NSString stringWithFormat:@"%s",input];
        if([strstart isEqualToString:inputfirst])
        {
            [watch starttime];
            NSLog(@"\nStop-Watch is started...");
        }
        else
        {
            NSLog(@"\nPlease enter '1' to start stop watch !..");
            goto start;
        }
        
        NSLog(@"\nEnter '2' to stop:");
        NSString *inputsec;
        do
        {
            scanf("%s",input2);
            inputsec=[NSString stringWithFormat:@"%s",input2];
        }
        while(![inputsec isEqualToString:strstop]);
        [watch stoptime];
        [watch calculatetime];
    }
    return 0;
}
