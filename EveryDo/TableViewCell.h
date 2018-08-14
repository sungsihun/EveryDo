//
//  TableViewCell.h
//  EveryDo
//
//  Created by NICE on 2018-08-14.
//  Copyright © 2018 NICE. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewCell : UITableViewCell

@property (readonly, strong, nonatomic) id dataObject;

- (void)configureCell:(id)theObject;

@end
