//
//  NewToDoViewController.h
//  EveryDo
//
//  Created by NICE on 2018-08-14.
//  Copyright © 2018 NICE. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ToDo.h"

@protocol AddNewToDoDelegate
- (void)didAddNewToDo:(ToDo*)toDo;
@end

@interface NewToDoViewController : UIViewController

@property (nonatomic, weak) id<AddNewToDoDelegate> delegate;

@end
