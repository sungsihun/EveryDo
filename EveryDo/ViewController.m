//
//  ViewController.m
//  EveryDo
//
//  Created by NICE on 2018-08-14.
//  Copyright © 2018 NICE. All rights reserved.
//

#import "ViewController.h"
#import "TableViewCell.h"

@interface ViewController ()
@property (nonatomic, strong) NSArray *toDoListArray;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.toDoListArray = @[
                        @"moring class",
                        @"breakout",
                        @"assignment1",
                        @"assignment2",
                        @"reading",
                        @"questions",
                        ];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - UITableViewDataSource methods

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.toDoListArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    TableViewCell *toDoListCell = [tableView dequeueReusableCellWithIdentifier:@"toDoCell" forIndexPath:indexPath];
    
    NSString *toDoList = self.toDoListArray[indexPath.row];
    [toDoListCell configureCell:toDoList];
    return toDoListCell;
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return @"To Do List";
}





@end
