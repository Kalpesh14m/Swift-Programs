//
//  ViewController.m
//  actionDemo
//
//  Created by gaurav on 07/03/17.
//  Copyright © 2017 Kalpesh. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)bt1:(id)sender {
    
    self.lbl.text=@"HELLO";
}

- (IBAction)SetColor:(id)sender {
    self.lbl.textColor = [UIColor redColor];
}

- (IBAction)SetFont:(id)sender {
    [self.lbl setFont:[UIFont fontWithName:@"Arial" size:25]];
}

- (IBAction)SetShadow:(id)sender {
    self.lbl.layer.shadowColor = [[UIColor blackColor] CGColor];
    self.lbl.layer.shadowOpacity = 0.5;
}

- (IBAction)LeftAlign:(id)sender {
}

- (IBAction)RightAlign:(id)sender {
}

- (IBAction)CenterAlign:(id)sender {
}
@end
