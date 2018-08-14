//
//  TableViewCell.h
//  EveryDo
//
//  Created by NICE on 2018-08-14.
//  Copyright © 2018 NICE. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ToDo.h"


@interface TableViewCell : UITableViewCell

@property (readonly, strong, nonatomic) id dataObject;
@property (strong, nonatomic) NSString *toDoTitle;
@property (strong, nonatomic) NSString *toDoDescription;
@property (nonatomic) NSInteger toDoPriority;
@property (nonatomic) BOOL toDoCompleted;

- (void)configureCell:(ToDo*)theObject;

@end
