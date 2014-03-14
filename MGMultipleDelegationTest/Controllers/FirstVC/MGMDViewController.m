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

- (MGMDManager *)manager {
    _manager = [MGMDManager sharedManager];
    return _manager;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
	// Do any additional setup after loading the view, typically from a nib.
    [self.manager addDelegate:self];
}


- (void)workDidFinishWithString:(NSString *)string {
    NSLog(@"1: WORK FINISH ---> %@", string);
}

@end
