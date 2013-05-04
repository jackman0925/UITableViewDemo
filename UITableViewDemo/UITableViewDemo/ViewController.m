//
//  ViewController.m
//  UITableViewDemo
//
//  Created by Jackman on 5/4/13.
//  Copyright (c) 2013 Jackman. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
        
    self.dataSourceItems= @[@"Apple",@"Watermelon",@"Pear",@"Orange",@"Banana",@"WHO am I"];
    
//    self.MyTableView.delegate = self;
//    self.MyTableView.dataSource = self;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - tableview datasource delegate

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    /*return _dataSourceItems.count;*/
    return self.dataSourceItems.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString * tableIdentifier = @"tableIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:tableIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:tableIdentifier];
        //cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }
    NSInteger rowIdx = [indexPath row];
    cell.textLabel.text = [self.dataSourceItems objectAtIndex:rowIdx];
//    cell.imageView =
//    cell.imageView.highlightedImage =
    return cell;
}

// Default is 1 if not implemented
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"select index:%d", indexPath.row);
}


@end
