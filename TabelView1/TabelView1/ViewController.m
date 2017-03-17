//
//  ViewController.m
//  TabelView1
//
//  Created by BridgeLabz on 16/03/17.
//  Copyright © 2017 Self Emp. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.Letters = @[@"A",@"B",@"C",@"D",@"E",@"F",@"G",@"H",@"I",@"J",@"K",@"L",@"M",@"N",@"O",@"P",@"Q",@"R",@"S",@"T",@"U",@"V",@"W",@"X",@"Y",@"Z"];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.Letters count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *simpleIdentifier = @"SimpleIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleIdentifier];
    if(cell==nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:simpleIdentifier];
    }
    UIImage *img = [UIImage imageNamed:@"food.jpg"];
    cell.imageView.image = img;
    
    cell.textLabel.text = self.Letters[indexPath.row];

    cell.textLabel.font = [UIFont boldSystemFontOfSize:30];
    if(indexPath.row<12)
    {
        cell.detailTextLabel.text = @"First 12 Rows";
    }
    else
    {
        cell.detailTextLabel.text = @"Last 12 Rows";
    }
    return cell;
}

-(NSInteger)tableView:(UITableView *)tableView indentationLevelForRowAtIndexPath:(nonnull NSIndexPath *)indexPath
{
    if(indexPath.row<12)
    {
        return 0;
    }
    else
    {
        return 3;
    }
}

-(NSIndexPath *)tableView:(UITableView *)tableView willselectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.row == 0)
    {
        return nil;
    }
    else
    {
        return indexPath;
    }
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *rowval = self.Letters[indexPath.row];
    NSString *msg = [[NSString alloc]initWithFormat:@"You Select %@!",rowval];
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Row Selected" message:msg delegate:nil cancelButtonTitle:@"Yes...." otherButtonTitles:nil, nil];
    [alert show];
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 70;
}
@end
