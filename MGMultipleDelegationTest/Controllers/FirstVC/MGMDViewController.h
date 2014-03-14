//
//  MGMDViewController.h
//  MGMultipleDelegationTest
//
//  Created by Matteo Gobbi on 13/03/14.
//  Copyright (c) 2014 Matteo Gobbi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MGMDManagerDelegate.h"

@class MGMDManager;

@interface MGMDViewController : UIViewController <MGMDManagerDelegate>

@property (nonatomic, strong) MGMDManager *manager;

@end
