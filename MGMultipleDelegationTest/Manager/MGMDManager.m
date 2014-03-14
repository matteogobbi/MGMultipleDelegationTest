//
//  MGMDManager.m
//  MGMultipleDelegationTest
//
//  Created by Matteo Gobbi on 13/03/14.
//  Copyright (c) 2014 Matteo Gobbi. All rights reserved.
//

#import "MGMDManager.h"
#import "MGMDManagerDelegate.h"

@interface MGMDManager ()

@property (nonatomic, strong) NSMutableSet *delegates;

@end

@implementation MGMDManager

- (id)init
{
    if (self = [super init]) {
        _delegates = [NSMutableSet set];
    }
    return self;
}

- (void)registerDelegate:(id)delegate
{
    NSValue *value = [NSValue valueWithNonretainedObject:delegate];
    [self.delegates addObject:value];
}

- (void)deregisterDelegate:(id)delegate
{
    for (NSValue *value in [self.delegates copy]) {
        if ([[value nonretainedObjectValue] isEqual:delegate]) {
            [self.delegates removeObject:value];
        }
    }
}

- (void)finishWork
{
    for (NSValue *value in self.delegates) {
        id delegate = [value nonretainedObjectValue];
        if ([delegate respondsToSelector:@selector(workManager:didFinishWorkForObject:)]) {
            [delegate workManager:self didFinishWorkForObject:delegate];
        }
    }
}

@end
