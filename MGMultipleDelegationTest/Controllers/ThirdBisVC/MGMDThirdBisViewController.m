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

- (MGMDManager *)manager {
    _manager = [MGMDManager sharedManager];
    return _manager;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
	// Do any additional setup after loading the view, typically from a nib.
    [self.manager addDelegate:self];
}

- (void)viewWillAppear:(BOOL)animated {
    //Call the method to simulate
    [_manager finishWork];
}

- (void)dealloc {
    NSLog(@"3 Bis deallocated.");
}

- (void)workDidFinishWithString:(NSString *)string {
    NSLog(@"3 bis: WORK FINISH ---> %@", string);
}

- (IBAction)dismiss:(id)sender {
    /*
     IMPORTANT: don't forget to remove this controller from delegates in the manager!
     What's happen if you don't remove this? The mutableSet of delegates in the Manager,
     retains this controller, and so it won't deallocated. 
     Moreover, it will remain from the delegates and will continue to respond.
     Again, if you reopen this controller, will be instantied a new object, and so it
     will be inserted again in the mutableSet of delegates. So, there will be 2 
     delegate "3 bis", and you could repeat this behavior until infinite.
    */
    [_manager removeDelegate:self];
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
