//
//  MGMDAppDelegate.m
//  MGMultipleDelegationTest
//
//  Created by Matteo Gobbi on 13/03/14.
//  Copyright (c) 2014 Matteo Gobbi. All rights reserved.
//

#import "MGMDAppDelegate.h"
#import "MGMDManager.h"

#import "MGMDViewController.h"
#import "MGMDSecondViewController.h"
#import "MGMDThirdViewController.h"

@interface MGMDAppDelegate ()

@property (nonatomic, strong) UITabBarController *tabBarController;
@property (nonatomic, strong) MGMDManager *manager;

@end

@implementation MGMDAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.tabBarController = [[UITabBarController alloc] init];
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    self.manager = [[MGMDManager alloc] init];
    
    MGMDViewController *viewController = [storyboard instantiateViewControllerWithIdentifier:@"MGMDViewController"];
    viewController.manager = self.manager;
    MGMDSecondViewController *secondViewController = [storyboard instantiateViewControllerWithIdentifier:@"MGMDSecondViewController"];
    secondViewController.manager = self.manager;
    MGMDThirdViewController *thirdViewController = [storyboard instantiateViewControllerWithIdentifier:@"MGMDThirdViewController"];
    thirdViewController.manager = self.manager;
    
    [self.tabBarController setViewControllers:@[viewController, secondViewController, thirdViewController]];

    self.window.rootViewController = self.tabBarController;
    [self.window makeKeyAndVisible];
    
    // Override point for customization after application launch.
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
