//
//  UITextView+NUI.m
//  NUIDemo
//
//  Created by Jean Baptiste Stevenard on 10/09/13.
//  Copyright (c) 2013 Tom Benner. All rights reserved.
//

#import "UITextView+NUI.h"

@implementation UITextView (NUI)

- (void)initNUI
{
    if (!self.nuiClass) {
        self.nuiClass = @"TextView";
    }
}

- (void)applyNUI
{
    [self initNUI];
    if ([self nuiShouldBeApplied]) {
        [NUIRenderer renderTextView:self withClass:self.nuiClass];
    }
    self.nuiApplied = [NSNumber numberWithBool:YES];
}

- (void)override_didMoveToWindow
{
    if (!self.nuiApplied) {
        [self applyNUI];
    }
    [self override_didMoveToWindow];
}

- (BOOL)nuiShouldBeApplied
{
    if (![self.nuiClass isEqualToString:@"none"]) {
        if (![[self superview] isKindOfClass:[UISearchBar class]]) {
            return YES;
        }
    }
    return NO;
}




@end
