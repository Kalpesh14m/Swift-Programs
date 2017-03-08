
#import <Foundation/Foundation.h>
@interface InsertionSort : NSObject
{
    int size;
    NSMutableArray *data;
}
-(void)getString:(NSMutableArray*)array;
-(void)display;
-(void)insertion_sort:(NSMutableArray*)array;

@end
