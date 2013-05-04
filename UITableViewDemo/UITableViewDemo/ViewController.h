//
//  ViewController.h
//  UITableViewDemo
//
//  Created by Jackman on 5/4/13.
//  Copyright (c) 2013 Jackman. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDelegate, UITableViewDataSource> 

@property(nonatomic, retain) NSArray *dataSourceItems;
@property (weak, nonatomic) IBOutlet UITableView *MyTableView;

@end
