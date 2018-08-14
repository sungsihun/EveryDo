//
//  TableViewCell.m
//  EveryDo
//
//  Created by NICE on 2018-08-14.
//  Copyright © 2018 NICE. All rights reserved.
//

#import "TableViewCell.h"


@interface TableViewCell ()

@property (weak, nonatomic) IBOutlet UILabel *toDoListLabel;
@end


@implementation TableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)configureCell:(ToDo*)theObject {
    _dataObject = theObject;
    self.toDoTitle = theObject.toDoTitle;
    self.toDoDescription = theObject.toDoDescription;
    self.toDoPriority = theObject.toDoPriorityNumber;
    
    self.toDoListLabel.text = self.toDoTitle;
}

@end
