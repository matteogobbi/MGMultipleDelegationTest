//
//  MGMDThirdViewController.m
//  MGMultipleDelegationTest
//
//  Created by Matteo Gobbi on 14/03/14.
//  Copyright (c) 2014 Matteo Gobbi. All rights reserved.
//

#import "MGMDThirdViewController.h"
#import "MGMDManager.h"
#import "MGMDThirdBisViewController.h"

@implementation MGMDThirdViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.manager registerDelegate:self];
}

- (void)workManager:(MGMDManager *)manager didFinishWorkForObject:(id)object
{
    NSLog(@"%@ finished working", object);
}

- (IBAction)openNewView:(id)sender
{
    MGMDThirdBisViewController *newViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"MGMDThirdBisViewController"];
    newViewController.manager = self.manager;
    [self presentViewController:newViewController animated:YES completion:nil];
}

@end
