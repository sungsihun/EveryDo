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

- (void)configureCell:(id)theObject {
    _dataObject = theObject;
    NSString *dataObject = theObject;
    self.toDoListLabel.text = dataObject;
}

@end
