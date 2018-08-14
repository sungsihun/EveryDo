//
//  DetailViewController.h
//  EveryDo
//
//  Created by NICE on 2018-08-14.
//  Copyright © 2018 NICE. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *detailViewLabel1;
@property (strong, nonatomic) IBOutlet UILabel *detailViewLabel2;
@property (strong, nonatomic) IBOutlet UILabel *detailViewLabel3;

@property (strong,nonatomic) NSString *toDoDetail1;
@property (strong,nonatomic) NSString *toDoDetail2;
@property (strong,nonatomic) NSString *toDoDetail3;

@end
