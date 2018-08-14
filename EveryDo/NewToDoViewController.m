//
//  NewToDoViewController.m
//  EveryDo
//
//  Created by NICE on 2018-08-14.
//  Copyright © 2018 NICE. All rights reserved.
//

#import "NewToDoViewController.h"

@interface NewToDoViewController ()
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextField *descriptionTextField;
@property (weak, nonatomic) IBOutlet UITextField *priorityTextField;

@end

@implementation NewToDoViewController


- (IBAction)doneButton:(id)sender {
    ToDo *newToDo = [[ToDo alloc] initWithTitle:self.nameTextField.text
                                    Description:self.descriptionTextField.text
                                 PriorityNumber:self.priorityTextField.text.integerValue    ];
    
    [self.delegate didAddNewToDo:newToDo];
//    [self dismissViewControllerAnimated:YES completion:^{}];
    [self.navigationController popToRootViewControllerAnimated:YES];
}

@end
