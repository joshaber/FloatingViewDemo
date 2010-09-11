//
//  UIView+FVDExtensions.h
//  FloatingViewDemo
//
//  Created by Josh Abernathy on 9/10/10.
//  Copyright 2010 Maybe Apps. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface UIView (FVDExtensions)
- (void)floatIntoWindow;
- (void)unfloatIntoView:(UIView *)newSuperview;
- (CGAffineTransform)transformForInterfaceOrientation:(UIInterfaceOrientation)orientation;
- (CGAffineTransform)transformForCurrentInterfaceOrientation;
@end
