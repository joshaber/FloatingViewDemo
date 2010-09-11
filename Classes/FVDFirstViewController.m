//
//  FVDFirstViewController.m
//  FloatingViewDemo
//
//  Created by Josh Abernathy on 9/10/10.
//  Copyright 2010 Maybe Apps. All rights reserved.
//

#import "FVDFirstViewController.h"
#import "FVDSecondViewController.h"
#import "UIView+FVDExtensions.h"


@implementation FVDFirstViewController

- (void)dealloc {
    [headerView release];
    [super dealloc];
}

- (id)init {
    self = [super initWithNibName:NSStringFromClass([self class]) bundle:nil];
    if(self == nil) return nil;
    
    return self;
}


#pragma mark UIViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"First View";
}

- (void)viewDidUnload {
    self.headerView = nil;
    
    [super viewDidUnload];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    [self.headerView unfloatIntoView:self.view];
}

- (void)viewWillDisappear:(BOOL)animated {
    [self.headerView floatIntoWindow];
    
    [super viewWillDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation {
    return YES;
}


#pragma mark API

- (IBAction)goToNextView {
    FVDSecondViewController *viewController = [[FVDSecondViewController alloc] init];
    viewController.headerView = self.headerView;
    [self.navigationController pushViewController:viewController animated:YES];
    [viewController release];
}

@synthesize headerView;

@end
