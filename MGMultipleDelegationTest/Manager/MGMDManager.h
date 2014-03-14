//
//  MGMDManager.h
//  MGMultipleDelegationTest
//
//  Created by Matteo Gobbi on 13/03/14.
//  Copyright (c) 2014 Matteo Gobbi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MGMDManager : NSObject

- (void)addDelegate:(id)delegate;
- (void)removeDelegate:(id)delegate;

- (void)finishWork;

+ (id)sharedManager;

@end
