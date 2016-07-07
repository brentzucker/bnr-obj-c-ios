//
//  BNRPerson.m
//  BMITime
//
//  Created by Brent Zucker on 7/6/16.
//  Copyright © 2016 Brent Zucker. All rights reserved.
//


#import "BNRPerson.h"

@implementation BNRPerson

- (float)bodyMassIndex
{
    return [self weightInKilos] / ([self heightInMeters] * [self heightInMeters]);
}

@end
