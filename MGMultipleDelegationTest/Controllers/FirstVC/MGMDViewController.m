//
//  MGMDViewController.m
//  MGMultipleDelegationTest
//
//  Created by Matteo Gobbi on 13/03/14.
//  Copyright (c) 2014 Matteo Gobbi. All rights reserved.
//

#import "MGMDViewController.h"
#import "MGMDManager.h"

@implementation MGMDViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.manager registerDelegate:self];
}

- (void)workManager:(MGMDManager *)manager didFinishWorkForObject:(id)object
{
    NSLog(@"%@ finished working", object);
}

@end
