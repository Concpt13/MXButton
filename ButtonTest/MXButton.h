//
//  MXButton.h
//  Mixim
//
//  Created by Joe Rickerby on 04/08/2015.
//  Copyright (c) 2015 Mixim Technology Ltd. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface MXButton : NSButton

@property (assign) CGFloat cornerRadius;
@property (strong) NSColor *backgroundColor;
@property (strong) NSColor *highlightColor;
@property (strong) NSColor *textColor;
@property (strong) NSColor *highlightTextColor;
@property (assign) NSEdgeInsets padding;

@property (assign) BOOL subpixelAntialiasing;

// If uniform highlight color is required, ie both text and background to highlight the same colour
// Note: translucent text will be changed by the background highlight
- (id)initWithHighlightColor:(NSColor *)highlightColor;


@end
