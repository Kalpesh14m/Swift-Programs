/*
 
 UserName -
 Created by Kalpesh Mali at BridgeLabz Solutions LLP  on 1/3/17.
 Copyright © 2017 BridgeLabz Solutions LLP . All rights reserved.
 
 Problem statement - 1

 User Input and Replace String Template “Hello <<UserName>>, How are you?”
 I/P -> Take User Name as Input. Ensure UserName has min 3 char
 Logic -> Replace <<UserName>> with the proper name
 O/P -> Print the String with User Name
 
 */
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    {
        NSString *string = @"Hello <<UserName>>, how are you";
        char name[30];
        do
        {
            NSLog(@"Enter your name:");
            scanf("%s",name);
            
            if(strlen(name)<4)
                NSLog(@"Please enter atleast 4 character name=");
            else
            {
                NSString *error;
                NSString *uname = [NSString stringWithFormat:@"%s",name];
                
                NSRegularExpression *regex=[NSRegularExpression regularExpressionWithPattern:@"<<UserName>>" options:NSRegularExpressionCaseInsensitive error:&error];
                
                NSString *output=[regex stringByReplacingMatchesInString:string options:0 range:NSMakeRange(0, [string length]) withTemplate:uname];
                
                NSLog(@"\nOutput:%@",output);
            }
        }while (strlen(name)<3);
        
    }
    return 0;
}
