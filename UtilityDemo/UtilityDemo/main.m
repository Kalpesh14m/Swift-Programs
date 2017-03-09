
#import <Foundation/Foundation.h>
#import "Utility.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Utilty *utility=[[Utilty alloc]init];
        int integerarray[max],i;
        int ch,key;
        do{
            printf("\n------Utility Function-----");
            printf("\n1)BinarySerach-Integer\n2)BinarySearchString\n3)InsertionSort-Integer\n4)InsertionSortString\n5)BoubleSort-Integer\n6)BoubleSort-String\n7)Exit\nEnter Your Option:\n");
            scanf("%d",&ch);
            switch (ch) {
                case 1:
                    
                    printf("\nWelcome to BinarySerach-Integer operation..");
                    printf("\nEnter 6 array elements:\n");
                    for (i=0; i<max; i++) {
                        scanf("%d",&integerarray[i]);
                    }
                    printf("\nEnter Key:\n");
                    scanf("%d",&key);
                    
                    int loc=[utility BinarySearchInteger:integerarray andKey:key];
                    if (loc<0) {
                        printf("\nString not found !");
                    }
                    else{
                        printf("\nString found at location %d",loc+1);
                    }
                    break;
                case 2:
                    printf("\nWelcome to BinarySerach-String operation..");
                    int loc1=[utility BinarySearchString];
                    if (loc1<0)
                    {
                        printf("\nString not found !");
                    }
                    else if (loc1>=0)
                    {
                        printf("\nString found at location %d",loc1+1);
                    }
                    break;
                case 3:
                    printf("\nWelcome to InsertionSort-Integer operation..");
                    printf("\nEnter 6 array elements:\n");
                    for (i=0; i<max; i++) {
                        scanf("%d",&integerarray[i]);
                    }
                    [utility InsertionSortInteger:integerarray];
                    break;
                case 4:
                    printf("\nWelcome to InsertionSort-String operation..");
                    [utility InsertionSortString];
                    break;
                case 5:
                    printf("\nWelcome to BoubleSort-Integer operation..");
                    printf("\nEnter 6 array elements:\n");
                    for (i=0; i<max; i++) {
                        scanf("%d",&integerarray[i]);
                    }
                    [utility BoubleSortInteger:integerarray];
                    break;
                case 6:
                    printf("\nWelcome to BoubleSort-String operation..");
                    [utility BoubleSortString];
                    break;
                    
                default:
                    break;
            }
        }while(ch!=7);
        
        
    }
    return 0;
}

