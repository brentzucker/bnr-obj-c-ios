//
//  BNRPerson.h
//  BMITime
//
//  Created by Brent Zucker on 7/6/16.
//  Copyright © 2016 Brent Zucker. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRPerson : NSObject

@property (nonatomic) float heightInMeters;
@property (nonatomic) float weightInKilos;

// BNRPerson as a method that calculates the Bodhy Mass Index
- (float)bodyMassIndex;

@end
