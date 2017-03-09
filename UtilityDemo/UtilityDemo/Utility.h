#import <Foundation/Foundation.h>
#define max 6

@interface Utilty : NSObject

-(int)BinarySearchInteger:(int[])input andKey:(int)item;
-(int)BinarySearchString;
-(void)InsertionSortInteger:(int[])input;
-(void)InsertionSortString;
-(void)BoubleSortInteger:(int[])input;
-(void)BoubleSortString;


@end
