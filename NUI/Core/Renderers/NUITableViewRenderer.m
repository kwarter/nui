//
//  NUITableViewRenderer.m
//  Pods
//
//  Created by Tobias Heinicke on 19.06.13.
//
//

#import "NUITableViewRenderer.h"
#import "NUIViewRenderer.h"

@implementation NUITableViewRenderer

+ (void)render:(UITableView*)tableView withClass:(NSString*)className
{
    // Set seperator style
    if ([NUISettings hasProperty:@"separator-style" withClass:className]) {
        [tableView setSeparatorStyle:[NUISettings getSeparatorStyle:@"separator-style" withClass:className]];
    }
    
    // Set seperator color
    if ([NUISettings hasProperty:@"separator-color" withClass:className]) {
        [tableView setSeparatorColor:[NUISettings getColor:@"separator-color" withClass:className]];
    }

    [NUIViewRenderer renderOpacity:tableView withClass:className];
    [self renderSizeDependentProperties:tableView withClass:(NSString*)className];
}

+ (void)sizeDidChange:(UITableView*)tableView
{
    [self renderSizeDependentProperties:tableView withClass:tableView.nuiClass];
}

+ (void)renderSizeDependentProperties:(UITableView*)tableView withClass:(NSString*)className
{
    // Set background color
    if ([NUISettings hasProperty:@"background-color" withClass:className]) {
        UIImage *colorImage = [NUISettings getImageFromColor:@"background-color" withClass:className];
        tableView.backgroundView = [[UIImageView alloc] initWithImage:colorImage];
    }
    
    // Set background gradient
    if ([NUISettings hasProperty:@"background-color-top" withClass:className]) {
        UIImage *gradientImage = [NUIGraphics
                                  gradientImageWithTop:[NUISettings getColor:@"background-color-top" withClass:className]
                                  bottom:[NUISettings getColor:@"background-color-bottom" withClass:className]
                                  frame:tableView.bounds];
        tableView.backgroundView = [[UIImageView alloc] initWithImage:gradientImage];
    }
    
    // Set background image
    if ([NUISettings hasProperty:@"background-image" withClass:className]) {
        UIImage *backgroundImage = [NUISettings getImage:@"background-image" withClass:className];
		if([NUISettings hasProperty:@"background-repeat" withClass:className] && [((NSString*)[NUISettings get:@"background-repeat" withClass:className]) isEqualToString:@"repeat"]){
			tableView.backgroundColor = [UIColor colorWithPatternImage:backgroundImage];
		} else {
			tableView.backgroundView = [[UIImageView alloc] initWithImage:backgroundImage];
		}
    }
}

@end