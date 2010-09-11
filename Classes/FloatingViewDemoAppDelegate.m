//
//  FloatingViewDemoAppDelegate.m
//  FloatingViewDemo
//
//  Created by Josh Abernathy on 9/10/10.
//  Copyright 2010 Maybe Apps. All rights reserved.
//

#import "FloatingViewDemoAppDelegate.h"
#import "FVDFirstViewController.h"


@implementation FloatingViewDemoAppDelegate

- (void)dealloc {
    [navigationController release];
    [window release];
    [super dealloc];
}


#pragma mark UIApplicationDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    FVDFirstViewController *viewController = [[FVDFirstViewController alloc] init];
    navigationController = [[UINavigationController alloc] initWithRootViewController:viewController];
    [viewController release];
    
    [window addSubview:navigationController.view];
    [window makeKeyAndVisible];
    
    return YES;
}


#pragma mark API

@synthesize window;

@end
