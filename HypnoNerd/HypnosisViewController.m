//
//  HypnosisViewController.m
//  HypnoNerd
//
//  Created by Brent Zucker on 7/11/16.
//  Copyright © 2016 Big Nerd Ranch. All rights reserved.
//

#import "HypnosisViewController.h"
#import "HypnosisView.h"

@implementation HypnosisViewController

- (void)loadView
{
    HypnosisView *backgroundView = [[HypnosisView alloc] init];

    // set as the gview of the view controller
    self.view = backgroundView;
}

@end
