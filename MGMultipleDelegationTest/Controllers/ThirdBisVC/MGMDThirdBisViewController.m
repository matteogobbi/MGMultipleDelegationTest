//
//  MGMDThirdBisViewController.m
//  MGMultipleDelegationTest
//
//  Created by Matteo Gobbi on 14/03/14.
//  Copyright (c) 2014 Matteo Gobbi. All rights reserved.
//

#import "MGMDThirdBisViewController.h"
#import "MGMDManager.h"

@implementation MGMDThirdBisViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.manager registerDelegate:self];
}

- (void)viewWillAppear:(BOOL)animated
{
    [self.manager finishWork];
}

- (void)dealloc
{
    NSLog(@"%p deallocated.", self);
}

- (void)workManager:(MGMDManager *)manager didFinishWorkForObject:(id)object
{
    NSLog(@"%@ finished working", object);
}

- (IBAction)dismiss:(id)sender
{
    [self.manager deregisterDelegate:self];
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
