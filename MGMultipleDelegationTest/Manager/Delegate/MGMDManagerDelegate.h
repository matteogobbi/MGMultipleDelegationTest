//
//  MGMDManagerDelegate.h
//  MGMultipleDelegationTest
//
//  Created by Matteo Gobbi on 13/03/14.
//  Copyright (c) 2014 Matteo Gobbi. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol MGMDManagerDelegate <NSObject>

@optional
- (void)workManager:(MGMDManager *)manager didFinishWorkForObject:(id)object;

@end
