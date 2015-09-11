//
//  AppDelegate.m
//  ButtonTest
//
//  Created by Zulfi Khan on 18/08/2015.
//  Copyright (c) 2015 Zulfi Khan. All rights reserved.
//

#import "AppDelegate.h"
#import "ButtonViewController.h"

@interface AppDelegate ()

@property (strong) NSWindow *window;
@property (strong) NSViewController *initialVC;


@end

@implementation AppDelegate


- (void)applicationWillTerminate:(NSNotification *)aNotification
{
    // Insert code here to tear down your application
}


- (void)applicationDidFinishLaunching:(NSNotification*)notification
{
    NSRect frame = NSMakeRect([NSScreen mainScreen].frame.size.width/2 -250, [NSScreen mainScreen].frame.size.height/2 -250, 500, 500);

    NSWindow *window = [[NSWindow alloc] initWithContentRect:frame
                                                   styleMask:NSTitledWindowMask
                                                     backing:NSBackingStoreBuffered
                                                       defer:NO
                                                      screen:[NSScreen mainScreen]];
    [window setStyleMask:[window styleMask] | NSResizableWindowMask];
    
    CGSize fixedSize = CGSizeMake(500, 500);
    [window setMinSize:fixedSize];
    [window setMaxSize:fixedSize];

    [window setBackgroundColor:[NSColor grayColor]];
    [window makeKeyAndOrderFront:NSApp ];
    
    
    ButtonViewController *buttonVC = [[ButtonViewController alloc] init];
    if (buttonVC){
        [window setContentView:buttonVC.view];
    }

    
    self.window = window;
    self.initialVC = buttonVC;
}
                                       
@end
