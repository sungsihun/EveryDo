//
//  ToDo.m
//  EveryDo
//
//  Created by NICE on 2018-08-14.
//  Copyright © 2018 NICE. All rights reserved.
//

#import "ToDo.h"

@implementation ToDo

- (instancetype)initWithTitle:(NSString *)title Description:(NSString *)description PriorityNumber:( NSInteger)priorityNumber {
    if (self = [super init]){
        _toDoTitle = title;
        _toDoDescription = description;
        _toDoPriorityNumber = priorityNumber;
    }
    return self;
}

@end
