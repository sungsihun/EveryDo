//
//  ViewController.m
//  EveryDo
//
//  Created by NICE on 2018-08-14.
//  Copyright © 2018 NICE. All rights reserved.
//

#import "ViewController.h"
#import "TableViewCell.h"
#import "DetailViewController.h"
#import "ToDo.h"
#import "NewToDoViewController.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate, AddNewToDoDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic, strong) NSMutableArray<ToDo*> *toDoListArray;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    ToDo *toDoItem1 = [[ToDo alloc] initWithTitle:@"moring class" Description:@"moring class description" PriorityNumber:1];
    ToDo *toDoItem2 = [[ToDo alloc] initWithTitle:@"breakout" Description:@"breakout description" PriorityNumber:1];
    ToDo *toDoItem3 = [[ToDo alloc] initWithTitle:@"assignment1" Description:@"assignment1 description" PriorityNumber:1];
    ToDo *toDoItem4 = [[ToDo alloc] initWithTitle:@"assignment2" Description:@"assignment2 description" PriorityNumber:1];
    ToDo *toDoItem5 = [[ToDo alloc] initWithTitle:@"reading" Description:@"reading description" PriorityNumber:1];
    ToDo *toDoItem6 = [[ToDo alloc] initWithTitle:@"questions" Description:@"questions description" PriorityNumber:1];
    
    self.toDoListArray = [@[toDoItem1, toDoItem2, toDoItem3, toDoItem4, toDoItem5, toDoItem6] mutableCopy];
    
    UISwipeGestureRecognizer *swipeGesture = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(completeToDo)];
    swipeGesture.direction = UISwipeGestureRecognizerDirectionLeft;
    [self.tableView addGestureRecognizer:swipeGesture];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - UITableViewDelegate

- (UISwipeActionsConfiguration *)tableView:(UITableView *)tableView leadingSwipeActionsConfigurationForRowAtIndexPath:(NSIndexPath *)indexPath {
    UIContextualAction *completeAction = [UIContextualAction contextualActionWithStyle:UIContextualActionStyleNormal title:@"completed" handler:^(UIContextualAction * _Nonnull action, __kindof UIView * _Nonnull sourceView, void (^ _Nonnull completionHandler)(BOOL)) {
        
        // TODO: Complete actions here
        self.toDoListArray[indexPath.row].toDoCompleted = YES;
        [tableView reloadData];
    }];
    UISwipeActionsConfiguration *completeActionConfiguration = [UISwipeActionsConfiguration configurationWithActions:@[completeAction]];
    completeActionConfiguration.performsFirstActionWithFullSwipe = YES;
    return completeActionConfiguration;

}

- (UISwipeActionsConfiguration *)tableView:(UITableView *)tableView trailingSwipeActionsConfigurationForRowAtIndexPath:(NSIndexPath *)indexPath {
    UIContextualAction *deleteAction = [UIContextualAction contextualActionWithStyle:UIContextualActionStyleNormal title:@"delete" handler:^(UIContextualAction * _Nonnull action, __kindof UIView * _Nonnull sourceView, void (^ _Nonnull completionHandler)(BOOL)) {
        
        [self.toDoListArray removeObject:self.toDoListArray[indexPath.row]];
        [tableView reloadData];
    }];
    UISwipeActionsConfiguration *deleteActionConfiguration = [UISwipeActionsConfiguration configurationWithActions:@[deleteAction]];
    return deleteActionConfiguration;
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
    
    ToDo *toDoList = self.toDoListArray[indexPath.row];

    
    [toDoListCell configureCell:toDoList];
    return toDoListCell;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return @"To Do List";
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"detailViewSegue"]) {
        DetailViewController *detailViewController = segue.destinationViewController;
        TableViewCell *toDoListCell = sender;
        detailViewController.toDoDetail1 = toDoListCell.toDoTitle;
        detailViewController.toDoDetail2 = toDoListCell.toDoDescription;
        detailViewController.toDoDetail3 = [NSString stringWithFormat:@"Priority: %ld", toDoListCell.toDoPriority];
    }
    if ([segue.identifier isEqualToString:@"AddNewToDoSegue"]) {
        NewToDoViewController *dvc = segue.destinationViewController;
        dvc.delegate = self;
    }
}



#pragma mark - AddNewToDoDelegate

- (void)didAddNewToDo:(ToDo *)toDo {
    [self.toDoListArray addObject:toDo];
    [self.tableView reloadData];
}


#pragma mark - completeToDo

- (void)completeToDo {
    NSLog(@"test");
 
}

@end
