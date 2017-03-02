//
//  main.m
//  Program1
//
//  Created by BridgeLabz Solutions LLP on 24/12/16.
//  Copyright © 2016 BridgeLabz Solutions LLP. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *string=@"Hello <<UserName>>, How are you?";
        char name[20];
        do{
        printf("\nEnter your name:\n");
        scanf("%s",name);
        if (strlen(name)<3) {
            printf("\nPlease enter atleast 3 character..!");
        }
        else
        {
            
            NSError *error;
            NSString *uname=[NSString stringWithFormat:@"%s",name];
            NSRegularExpression *regex=[NSRegularExpression regularExpressionWithPattern:@"<<UserName>>" options:NSRegularExpressionCaseInsensitive error:&error];
            NSString *output=[regex stringByReplacingMatchesInString:string options:0 range:NSMakeRange(0, [string length]) withTemplate:uname];
            NSLog(@"\nOutput:%@",output);
        }
        }while (strlen(name)<3);
      }
    return 0;
}

