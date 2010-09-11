//
//  FloatingViewDemoAppDelegate.h
//  FloatingViewDemo
//
//  Created by Josh Abernathy on 9/10/10.
//  Copyright 2010 Maybe Apps. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface FloatingViewDemoAppDelegate : NSObject <UIApplicationDelegate> {
    UINavigationController *navigationController;
    UIWindow *window;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@end

