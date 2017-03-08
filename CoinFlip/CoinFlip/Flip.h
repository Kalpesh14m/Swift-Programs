//
//  Flip.h
//  Program2
//
//  Created by BridgeLabz Solutions LLP on 24/12/16.
//  Copyright © 2016 BridgeLabz Solutions LLP. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface Flip:NSObject
{
    int flip;
    int tail;
    int head;
    
}
-(void)getflip:(int)no_of_flips;
-(void)calculate;
-(void)disp_percentage:(int)tailc and:(int)headc;
@end
