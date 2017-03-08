//
//  ViewController.m
//  programButton
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


- (IBAction)btnclick:(id)sender {
     self.HelloLabel.text = self.textfield.text;
}
@end
