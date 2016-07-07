//
//  main.m
//  Stringz
//
//  Created by Brent Zucker on 7/6/16.
//  Copyright © 2016 Brent Zucker. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableString *str = [[NSMutableString alloc] init];
        for (int i = 0; i < 10; i++) {
            [str appendString:@"Brent is cool!\n"];
        }
        
        NSError *error;
        
        BOOL success = [str writeToFile:@"/tmp/cool.txt"
              atomically: YES
                encoding:NSUTF8StringEncoding
                   error:&error];
        
        if (success) {
            NSLog(@"done writing /tmp/cool.txt");
        } else {
            NSLog(@"done writing /tmp/cool.txt failed: %@", [error localizedDescription]);
        }
        
    }
    return 0;
}
