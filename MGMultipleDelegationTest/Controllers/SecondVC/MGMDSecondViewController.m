//
//  MGMDSecondViewController.m
//  MGMultipleDelegationTest
//
//  Created by Matteo Gobbi on 14/03/14.
//  Copyright (c) 2014 Matteo Gobbi. All rights reserved.
//

#import "MGMDSecondViewController.h"
#import "MGMDManager.h"

@implementation MGMDSecondViewController

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
