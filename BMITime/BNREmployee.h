//
//  BNREmployee.h
//  BMITime
//
//  Created by Brent Zucker on 7/6/16.
//  Copyright © 2016 Brent Zucker. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRPerson.h"

@interface BNREmployee : BNRPerson

@property (nonatomic) unsigned int employeeID;
@property (nonatomic) unsigned int officeAlarmCode;
@property (nonatomic) NSDate *hireDate;
- (double)yearsOfEmployment;

@end
