//
//  ViewController.h
//  programButton
//
//  Created by gaurav on 07/03/17.
//  Copyright © 2017 Kalpesh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
- (IBAction)btnclick:(id)sender;


@property (weak, nonatomic) IBOutlet UILabel *HelloLabel;
@property (weak, nonatomic) IBOutlet UITextField *textfield;


@end

