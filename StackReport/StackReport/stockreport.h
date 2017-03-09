@interface StockReport : NSObject
{
    int arr_no_of_share[20];
    int arr_share_value[20];
    NSMutableArray *stockname;
    int value_stock[20];
}
-(void)initarray;
-(void)stockinfo:(NSString *)nameofshare numShare:(int)no_of_share valueShare:(int)share_value;
-(void)calculatestock;
-(void)totalstock;
-(void)displaystock;

@end
