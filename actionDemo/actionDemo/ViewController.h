//
//  ViewController.h
//  actionDemo
//
//  Created by gaurav on 07/03/17.
//  Copyright © 2017 Kalpesh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController


@property (weak, nonatomic) IBOutlet UILabel *lbl;
- (IBAction)bt1:(id)sender;
- (IBAction)SetColor:(id)sender;
- (IBAction)SetFont:(id)sender;
- (IBAction)SetShadow:(id)sender;
- (IBAction)LeftAlign:(id)sender;
- (IBAction)RightAlign:(id)sender;
- (IBAction)CenterAlign:(id)sender;
@end

