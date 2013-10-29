//
//  NUIImageViewRenderer.m
//  Pods
//
//  Created by Kwarter on 10/29/13.
//
//

#import "NUIImageViewRenderer.h"
#import "NUIViewRenderer.h"

@implementation NUIImageViewRenderer

+ (void)render:(UIImageView*)imageView withClass:(NSString*)className{
    [NUIViewRenderer render:imageView withClass:className];
}

@end
