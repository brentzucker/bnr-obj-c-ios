//
//  main.m
//  BMITime
//
//  Created by Brent Zucker on 7/6/16.
//  Copyright © 2016 Brent Zucker. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNREmployee.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BNREmployee *mikey = [[BNREmployee alloc] init];
        
        mikey.weightInKilos = 96;
        mikey.heightInMeters = 1.8;
        mikey.employeeID = 12;
        mikey.hireDate = [NSDate dateWithNaturalLanguageString:@"Aug 2nd, 2010"];
        
        float height = mikey.heightInMeters;
        int weight = mikey.weightInKilos;
        NSLog(@"mikey is %.2f meters tall and weighs %d kilograms", height, weight);
        NSLog(@"Emplyee %u hired on %@", mikey.employeeID, mikey.hireDate);
    
        float bmi = [mikey bodyMassIndex];
        NSLog(@"mikey has a BMI of %f", bmi);
        
        double years = [mikey yearsOfEmployment];
        NSLog(@"BMI of %.2f has worked with us for %.2f years", bmi, years);
    }
    return 0;
}
