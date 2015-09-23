//
//  AppDelegate.m
//  PropTest
//
//  Created by Pierre Rothmaler on 23/09/15.
//  Copyright (c) 2015 Pierre Rothmaler. All rights reserved.
//

#import "AppDelegate.h"
#import "ClassInfo.h"
#import "ClassWithProperties.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

	NSLog(@"%@", [ClassInfo propertyInfoForClass:[ClassWithProperties class]]);

	return YES;
}

@end
