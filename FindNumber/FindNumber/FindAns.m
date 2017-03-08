
#import <Foundation/Foundation.h>
#import "FindAns.h"

@implementation FindAnswer

-(int)search:(int)low and:(int)high{
    if((high-low)==1){
        return low;
    }
    int mid=low+(high-low)/2;
    printf("\nIs number %d ?",mid);
    int boolval;
    scanf("%d",&boolval);
    val=boolval;
    if(val){
        return [self search:low and:mid];
    }
    else{
        return [self search:mid and:high];
    }
    
}
@end
