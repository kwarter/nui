//
//  NUITextViewRenderer.h
//  NUIDemo
//
//  Created by Jean Baptiste Stevenard on 10/09/13.
//  Copyright (c) 2013 Tom Benner. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <QuartzCore/QuartzCore.h>
#import "NUIGraphics.h"
#import "NUISettings.h"

@interface NUITextViewRenderer : NSObject

+ (void)render:(UITextView*)textView withClass:(NSString*)className;

@end
