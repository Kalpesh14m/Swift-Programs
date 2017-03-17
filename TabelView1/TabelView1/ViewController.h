//
//  ViewController.h
//  TabelView1
//
//  Created by BridgeLabz on 16/03/17.
//  Copyright © 2017 Self Emp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDataSource,UITabBarDelegate>
@property (copy,nonatomic) NSArray *Letters;

@end

