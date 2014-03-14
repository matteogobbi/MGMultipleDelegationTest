//
//  MGMDThirdBisViewController.h
//  MGMultipleDelegationTest
//
//  Created by Matteo Gobbi on 14/03/14.
//  Copyright (c) 2014 Matteo Gobbi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MGMDBaseViewController.h"
#import "MGMDManagerDelegate.h"

@interface MGMDThirdBisViewController : MGMDBaseViewController <MGMDManagerDelegate>

- (IBAction)dismiss:(id)sender;

@end
