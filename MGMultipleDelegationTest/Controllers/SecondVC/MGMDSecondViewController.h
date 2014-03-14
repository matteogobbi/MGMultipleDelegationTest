//
//  MGMDSecondViewController.h
//  MGMultipleDelegationTest
//
//  Created by Matteo Gobbi on 14/03/14.
//  Copyright (c) 2014 Matteo Gobbi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MGMDManagerDelegate.h"

@class MGMDManager;

@interface MGMDSecondViewController : UIViewController

@property (nonatomic, strong) MGMDManager *manager;

@end
