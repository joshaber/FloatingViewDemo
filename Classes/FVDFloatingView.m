//
//  FVDFloatingView.m
//  FloatingViewDemo
//
//  Created by Josh Abernathy on 9/10/10.
//  Copyright 2010 Maybe Apps. All rights reserved.
//

#import "FVDFloatingView.h"

@interface FVDFloatingView ()
- (void)setup;
@end


@implementation FVDFloatingView

- (void)dealloc {
    [shadowLayer release];
    [super dealloc];
}


#pragma mark UIView

- (id)initWithCoder:(NSCoder *)decoder {
    self = [super initWithCoder:decoder];
    if(self == nil) return nil;
    
    [self setup];
    
    return self;
}

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if(self == nil) return nil;
    
    [self setup];
    
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    static const CGFloat shadowHeight = 4.0f;
    shadowLayer.frame = CGRectMake(0.0f, CGRectGetMaxY(self.bounds) - shadowHeight, self.bounds.size.width, shadowHeight);
}


#pragma mark API

- (void)setup {
    shadowLayer = [[CAGradientLayer layer] retain];
    shadowLayer.colors = [NSArray arrayWithObjects:(id) [UIColor colorWithWhite:0.4f alpha:1.0f].CGColor, (id) [UIColor colorWithWhite:1.0f alpha:1.0f].CGColor, nil];
    [self.layer addSublayer:shadowLayer];
}

@end
