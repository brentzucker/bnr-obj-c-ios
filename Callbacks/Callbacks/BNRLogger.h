//
//  BNRLogger.h
//  Callbacks
//
//  Created by Brent Zucker on 7/6/16.
//  Copyright © 2016 Brent Zucker. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRLogger : NSObject<NSURLConnectionDelegate, NSURLConnectionDataDelegate>
{
    NSMutableData *_incomingData;
}
@property (nonatomic) NSDate *lastTime;
- (NSString *)lastTimeString;
- (void)updateLastTime:(NSTimer *)t;
@end


