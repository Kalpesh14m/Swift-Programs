//
//  main.m
//  Program9
//
//  Created by BridgeLabz Solutions LLP on 24/12/16.
//  Copyright © 2016 BridgeLabz Solutions LLP. All rights reserved.
//

#import <Foundation/Foundation.h>
int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        int row=0,colom=0;
        int input;
        printf("\nEnter Number of Row:");
        scanf("%d",&row);
        printf("\nEnter Number of Column:");
        scanf("%d",&colom);
        int i,j;
        int mat[row][colom];
        for(i=0;i<row;i++)
        {
            for(j=0;j<colom;j++)
            {
                scanf("%d",&input);
                mat[i][j]=input;
            }
        }
        NSLog(@"Row:%d",row);
        NSLog(@"Colom:%d",colom);
        for(i=0;i<row;i++)
        {
            for(j=0;j<colom;j++)
            {
                printf("| %d |",mat[i][j]);
                printf("\t");
                
            }
            printf("\n");
        }
    }
    return 0;
}
