//
//  MGMDManager.m
//  MGMultipleDelegationTest
//
//  Created by Matteo Gobbi on 13/03/14.
//  Copyright (c) 2014 Matteo Gobbi. All rights reserved.
//

#import "MGMDManager.h"
#import "MGMDManagerDelegate.h"

@implementation MGMDManager {
    NSMutableSet *delegates;
}

+ (id)sharedManager {
    static MGMDManager *sharedManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedManager = [self new];
    });
    return sharedManager;
}


- (id)init {
    if(self = [super init])
        delegates = [NSMutableSet new];
    
    return self;
}

- (void)addDelegate:(id)delegate {
    [delegates addObject:delegate];
}

- (void)removeDelegate:(id)delegate {
    [delegates removeObject:delegate];
}

- (void)finishWork {
    for(id delegate in delegates) {
        if ([delegate respondsToSelector:@selector(workDidFinishWithString:)]) {
            [delegate workDidFinishWithString:@"RESULT RETURNED"];
        }
    }
}

@end
