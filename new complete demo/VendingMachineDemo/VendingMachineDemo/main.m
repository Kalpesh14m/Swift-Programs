//
//  main.m
//  VendingMachine
//
//  Created by BridgeLabz Solutions LLP  on 2/15/17.
//  Copyright © 2017 BridgeLabz Solutions LLP . All rights reserved.
//

#import <Foundation/Foundation.h>
#import "vending.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        VendingMachine *v = [[VendingMachine alloc]init];
        [v notesReturn];
        
    }
    return 0;
}
