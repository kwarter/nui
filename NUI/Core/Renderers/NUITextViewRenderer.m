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
    NSString *property = @"font-size";
    
    if ([NUISettings hasProperty:property withClass:className]) {
        textView.font = [textView.font fontWithSize:[NUISettings getFloat:property withClass:className]];
    }
    
    
    //font-name has higher priority than font-style
    property = @"font-name";
    if ([NUISettings hasProperty:property withClass:className]) {
        textView.font = [UIFont fontWithName:[NUISettings get:property withClass:className] size:textView.font.pointSize];
    }else{
        property = @"font-style";
        if ([NUISettings hasProperty:property withClass:className]) {
            NSString*style=[NUISettings get:property withClass:className];
            if (!style) {
                //nothing todo
            }else if ([style isEqualToString:@"bold"]) {
                textView.font = [UIFont boldSystemFontOfSize: textView.font.pointSize];
            }else if ([style isEqualToString:@"italic"]) {
                textView.font = [UIFont italicSystemFontOfSize: textView.font.pointSize];
            }else{
                textView.font = [UIFont systemFontOfSize: textView.font.pointSize];
            }
            
        }
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
