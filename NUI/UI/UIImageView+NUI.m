//
//  UIImageView+NUI.m
//  Pods
//
//  Created by Florent Crivello on 10/29/13.
//
//

#import "UIImageView+NUI.h"

@implementation UIImageView (NUI)

- (void)initNUI
{
    if (!self.nuiClass) {
        self.nuiClass = @"TableCell";
    }
}

- (void)applyNUI
{
    [self initNUI];
    if (![self.nuiClass isEqualToString:@"none"]) {
        [NUIRenderer renderImageView:self withClass:self.nuiClass];
    }
    self.nuiIsApplied = [NSNumber numberWithBool:YES];
}

- (void)override_didMoveToWindow
{
    if (!self.nuiIsApplied) {
        [self applyNUI];
    }
    [self override_didMoveToWindow];
}

@end
