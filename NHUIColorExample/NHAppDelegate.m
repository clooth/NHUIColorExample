//
//  NHAppDelegate.m
//  NHUIColorExample
//
//  Created by Nico Hämäläinen on 4/12/13.
//  Copyright (c) 2013 Nico Hämäläinen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NHAppDelegate.h"
#import "UIColor+Manipulate.h"

@implementation NHAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    
    //
    // Default colors with no modifications
    //
    UIColor *redColor = [UIColor colorWithRed:211.0/255.0 green:60.0/255.0 blue:0.0 alpha:1.0];
    UIColor *blueColor = [UIColor colorWithRed:0.0 green:109.0/255.0 blue:211.0/255.0 alpha:1.0];
    UIColor *greenColor = [UIColor colorWithRed:40.0/255.0 green:211.0/255.0 blue:0.0 alpha:1.0];
    
    UILabel *basicLabel = [[UILabel alloc] initWithFrame:CGRectMake(25.0, 50.0, 125.0, 25.0)];
    [basicLabel setText:@"Default colors:"];
    [basicLabel sizeToFit];
    [self.window addSubview:basicLabel];
    
    UIView *redView = [[UIView alloc] initWithFrame:CGRectMake(25.0, 75.0, 25.0, 25.0)];
    UIView *blueView = [[UIView alloc] initWithFrame:CGRectMake(75.0, 75.0, 25.0, 25.0)];
    UIView *greenView = [[UIView alloc] initWithFrame:CGRectMake(125.0, 75.0, 25.0, 25.0)];

    [redView setBackgroundColor:redColor];
    [blueView setBackgroundColor:blueColor];
    [greenView setBackgroundColor:greenColor];
    
    [self.window addSubview:redView];
    [self.window addSubview:blueView];
    [self.window addSubview:greenView];
    
    //
    // Darken all the colors by 25%
    //
    UILabel *modifiedLabel = [[UILabel alloc] initWithFrame:CGRectMake(25.0, 125.0, 125.0, 25.0)];
    [modifiedLabel setText:@"Darkened colors:"];
    [modifiedLabel sizeToFit];
    [self.window addSubview:modifiedLabel];
    
    UIColor *darkRedColor = [redColor darken:25.0];
    UIColor *darkBlueColor = [blueColor darken:25.0];
    UIColor *darkGreenColor = [greenColor darken:25.0];
    
    UIView *darkRedView = [[UIView alloc] initWithFrame:CGRectMake(25.0, 150.0, 25.0, 25.0)];
    UIView *darkBlueView = [[UIView alloc] initWithFrame:CGRectMake(75.0, 150.0, 25.0, 25.0)];
    UIView *darkGreenView = [[UIView alloc] initWithFrame:CGRectMake(125.0, 150.0, 25.0, 25.0)];

    [darkRedView setBackgroundColor:darkRedColor];
    [darkBlueView setBackgroundColor:darkBlueColor];
    [darkGreenView setBackgroundColor:darkGreenColor];
    
    [self.window addSubview:darkRedView];
    [self.window addSubview:darkBlueView];
    [self.window addSubview:darkGreenView];


    //
    // Lighten all the colors by 25%
    //
    
    UILabel *lightenedLabel = [[UILabel alloc] initWithFrame:CGRectMake(25.0, 200.0, 125.0, 25.0)];
    [lightenedLabel setText:@"Lightened colors:"];
    [lightenedLabel sizeToFit];
    [self.window addSubview:lightenedLabel];
    
    UIColor *lightRedColor = [redColor lighten:25.0];
    UIColor *lightBlueColor = [blueColor lighten:25.0];
    UIColor *lightGreenColor = [greenColor lighten:25.0];
    
    UIView *lightRedView = [[UIView alloc] initWithFrame:CGRectMake(25.0, 225.0, 25.0, 25.0)];
    [lightRedView setBackgroundColor:lightRedColor];
    [self.window addSubview:lightRedView];
    
    UIView *lightBlueView = [[UIView alloc] initWithFrame:CGRectMake(75.0, 225.0, 25.0, 25.0)];
    [lightBlueView setBackgroundColor:lightBlueColor];
    [self.window addSubview:lightBlueView];
    
    UIView *lightGreenView = [[UIView alloc] initWithFrame:CGRectMake(125.0, 225.0, 25.0, 25.0)];
    [lightGreenView setBackgroundColor:lightGreenColor];
    [self.window addSubview:lightGreenView];
    
    // Display our window
    [self.window makeKeyAndVisible];
    return YES;
}

@end
