//
//  ViewController.h
//  iTahDoodle
//
//  Created by Brent Zucker on 7/7/16.
//  Copyright © 2016 Brent Zucker. All rights reserved.
//

#import <UIKit/UIKit.h>
@interface ViewController : UIViewController
@property (nonatomic) UITableView *taskTable;
@property (nonatomic) UITextField *taskField;
@property (nonatomic) UIButton *insertButton;
- (void)addTask:(id)sender;
@end

