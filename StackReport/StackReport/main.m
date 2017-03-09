#import <Foundation/Foundation.h>
#import "stockreport.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int no;
        char stock_name[20];
        int no_of_share;
        int share_value;
        
        NSLog(@"Enter no of employee information you want to insert:");
        scanf("%d",&no);
        
        StockReport *s =[[StockReport alloc]init];
        
        //read in Stock Names, Number of Share, Share Price
        for(int i=0;i<no;i++)
        {
            NSLog(@"\nEnter Name:");
            scanf("%s",stock_name);
            NSLog(@"\nEnter No of shares:");
            scanf("%d",&no_of_share);
            NSLog(@"\nEnter Share values:");
            scanf("%d",&share_value);
            
            NSString *nameofshare=[NSString stringWithFormat:@"%s",stock_name];
            
            [s stockinfo : nameofshare numShare:no_of_share valueShare:share_value];
        }
        [s calculatestock];
        [s totalstock];
        [s displaystock];
    }
    return 0;
}
