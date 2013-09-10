//
//  NUITextViewRenderer.m
//  NUIDemo
//
//  Created by Jean Baptiste Stevenard on 10/09/13.
//  Copyright (c) 2013 Tom Benner. All rights reserved.
//

#import "NUITextViewRenderer.h"
#import "NUIViewRenderer.h"

@implementation NUITextViewRenderer

+ (void)render:(UITextView*)textView withClass:(NSString*)className
{
    NSString *fontSizeProperty = @"font-size";
    
    // Set font name
    if ([NUISettings hasProperty:@"font-name" withClass:className]) {
        [textView setFont:[UIFont fontWithName:[NUISettings get:@"font-name" withClass:className] size:[NUISettings getFloat:fontSizeProperty withClass:className]]];
        // If font-name is undefined but font-size is defined, use systemFont
    } else if ([NUISettings getFloat:fontSizeProperty withClass:className]) {
        [textView setFont:[UIFont systemFontOfSize:[NUISettings getFloat:fontSizeProperty withClass:className]]];
    }
    
    // Set font color
    if ([NUISettings hasProperty:@"font-color" withClass:className]) {
        [textView setTextColor:[NUISettings getColor:@"font-color" withClass:className]];
    }
    
    // Set background color
    if ([NUISettings hasProperty:@"background-color" withClass:className]) {
        [textView setBackgroundColor:[NUISettings getColor:@"background-color" withClass:className]];
    }
    

    
    [NUIViewRenderer renderOpacity:textView withClass:className];
    [NUIViewRenderer renderSize:textView withClass:className];
    [NUIViewRenderer renderBorder:textView withClass:className];
    [NUIViewRenderer renderShadow:textView withClass:className];
    
    
}

@end
