//
//  FVDSecondViewController.m
//  FloatingViewDemo
//
//  Created by Josh Abernathy on 9/10/10.
//  Copyright 2010 Maybe Apps. All rights reserved.
//

#import "FVDSecondViewController.h"
#import "UIView+FVDExtensions.h"


@implementation FVDSecondViewController

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
    
    self.title = @"Second View";
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

@synthesize headerView;

@end
