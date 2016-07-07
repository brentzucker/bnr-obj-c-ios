//
//  main.m
//  Callbacks
//
//  Created by Brent Zucker on 7/6/16.
//  Copyright © 2016 Brent Zucker. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRLogger.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BNRLogger *logger = [[BNRLogger alloc] init];
        
        [[NSNotificationCenter defaultCenter]
            addObserver:logger
            selector:@selector(zoneChange:)
            name:NSSystemTimeZoneDidChangeNotification
            object:nil];
            
        NSURL *url = [NSURL URLWithString:@"http://www.gutenberg.org/cache/epub/205/pg205.txt"];
        
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        
        // BNRLogger is delegate
        __unused NSURLConnection *fetchConn = [[NSURLConnection alloc]
                    initWithRequest:request
                    delegate:logger
                    startImmediately:YES];
        
        __unused NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:2.0
                                target:logger
                                    selector:@selector(updateLastTime:)
                                        userInfo:nil
                                            repeats:YES];
        [[NSRunLoop currentRunLoop] run];
    }
    return 0;
}
