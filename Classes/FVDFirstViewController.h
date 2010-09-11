//
//  FVDFirstViewController.h
//  FloatingViewDemo
//
//  Created by Josh Abernathy on 9/10/10.
//  Copyright 2010 Maybe Apps. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface FVDFirstViewController : UIViewController {
    UIView *headerView;
}

- (IBAction)goToNextView;

@property (nonatomic, retain) IBOutlet UIView *headerView;

@end
