//
//  main.m
//  ButtonTest
//
//  Created by Zulfi Khan on 18/08/2015.
//  Copyright (c) 2015 Zulfi Khan. All rights reserved.
//

#import <Cocoa/Cocoa.h>

/*int main(int argc, const char * argv[]) {
    return NSApplicationMain(argc, argv);
}*/

#import "AppDelegate.h"

int main(int argc, char *argv[])
{
    @autoreleasepool {
        [NSApplication sharedApplication];
        
        AppDelegate *appDelegate = [[AppDelegate alloc] init];
        [NSApp setDelegate:appDelegate];
        [NSApp run];
    }

    return 0;
}
