//
//  UIView+FVDExtensions.m
//  FloatingViewDemo
//
//  Created by Josh Abernathy on 9/10/10.
//  Copyright 2010 Maybe Apps. All rights reserved.
//

#import "UIView+FVDExtensions.h"


@implementation UIView (FVDExtensions)

- (void)floatIntoWindow {
    if(self.superview == self.window) return;
    
    CGRect newFrame = [self.superview convertRect:self.frame toView:nil];
    [self.window addSubview:self];
    self.transform = [self transformForCurrentInterfaceOrientation];
    self.frame = newFrame;
}

- (void)unfloatIntoView:(UIView *)newSuperview {
    if(self.superview == newSuperview) return;
    
    CGRect newFrame = [newSuperview convertRect:self.frame fromView:nil];
    [newSuperview addSubview:self];
    self.transform = newSuperview.transform;
    self.frame = newFrame;
}

- (CGAffineTransform)transformForInterfaceOrientation:(UIInterfaceOrientation)orientation {
    if(orientation == UIInterfaceOrientationPortrait) {
        return CGAffineTransformIdentity;
    } else if(orientation == UIInterfaceOrientationLandscapeLeft) {
        return CGAffineTransformMakeRotation(270.0f * (CGFloat) M_PI / 180.0f);
    } else if(orientation == UIInterfaceOrientationLandscapeRight) {
        return CGAffineTransformMakeRotation(90.0f * (CGFloat) M_PI / 180.0f);
    } else if(orientation == UIInterfaceOrientationPortraitUpsideDown) {
        return CGAffineTransformMakeRotation(180.0f * (CGFloat) M_PI / 180.0f);
    }
    
    return CGAffineTransformIdentity;
}

- (CGAffineTransform)transformForCurrentInterfaceOrientation {
    return [self transformForInterfaceOrientation:[UIApplication sharedApplication].statusBarOrientation];
}

@end
