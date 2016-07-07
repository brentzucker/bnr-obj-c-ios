//
//  ViewController.m
//  iTahDoodle
//
//  Created by Brent Zucker on 7/7/16.
//  Copyright © 2016 Brent Zucker. All rights reserved.
//

#import "ViewController.h"
@interface ViewController ()
@end
@implementation ViewController
- (void)loadView
{
    CGRect frame = [UIScreen mainScreen].bounds;
    UIView *backgroundView = [[UIView alloc] initWithFrame:frame];
    // Define frame rectangles
    CGRect tableFrame = CGRectMake(0, 80, frame.size.width,
                                   frame.size.height - 100);
    CGRect fieldFrame = CGRectMake(20, 40, 200, 31);
    CGRect buttonFrame = CGRectMake(228, 40, 72, 31);
    // Table view
    self.taskTable = [[UITableView alloc] initWithFrame:tableFrame
                                                  style:UITableViewStylePlain];
    self.taskTable.separatorStyle = UITableViewCellSeparatorStyleNone;
    // Tell table view which class to instantiate
    // whenever it needs to create a new cell
    [self.taskTable registerClass:[UITableViewCell class]
           forCellReuseIdentifier:@"Cell"];
    // Create Task field
    self.taskField = [[UITextField alloc] initWithFrame:fieldFrame];
    self.taskField.borderStyle = UITextBorderStyleRoundedRect;
    self.taskField.placeholder = @"Type a task, tap Insert";
    // Create the Button
    self.insertButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.insertButton.frame = buttonFrame;
    // Give button title
    [self.insertButton setTitle:@"Insert"
                       forState:UIControlStateNormal];
    // set target and action
    [self.insertButton addTarget:self
                          action:@selector(addTask:)
                forControlEvents:UIControlEventTouchUpInside];
    [backgroundView addSubview:self.taskTable];
    [backgroundView addSubview:self.taskField];
    [backgroundView addSubview:self.insertButton];
    self.view = backgroundView;
}
- (void)addTask:(id)sender
{
    NSString *text = [self.taskField text];
    // Quit here if taskField is empty
    if ([text length] == 0) {
        return;
    }
    // Log text to console
    NSLog(@"Task entered: %@", text);
    // Clear out the text field
    [self.taskField setText:@""];
    // Dismiss the keyboard
    [self.taskField resignFirstResponder];
}
@end
