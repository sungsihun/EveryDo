//
//  ToDo.h
//  EveryDo
//
//  Created by NICE on 2018-08-14.
//  Copyright © 2018 NICE. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ToDo : NSObject
@property (nonatomic) NSString *toDoTitle;
@property (nonatomic) NSString *toDoDescription;
@property (nonatomic) NSInteger toDoPriorityNumber;

- (instancetype)initWithTitle:(NSString*)title Description:(NSString*)description PriorityNumber:(NSInteger)priorityNumber;
@end
