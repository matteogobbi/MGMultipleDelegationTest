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
    NSLog(@"3: WORK FINISH ---> %@", string);
}

- (IBAction)openNewView:(id)sender {
    MGMDThirdBisViewController *newView = [self.storyboard instantiateViewControllerWithIdentifier:@"MGMDThirdBisViewController"];
    [self presentViewController:newView animated:YES completion:nil];
}

@end
