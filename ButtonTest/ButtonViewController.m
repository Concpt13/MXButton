//
//  ButtonViewController.m
//  ButtonTest
//
//  Created by Zulfi Khan on 18/08/2015.
//  Copyright (c) 2015 Zulfi Khan. All rights reserved.
//

#import "ButtonViewController.h"
#import "MXButton.h"
#import <Masonry/Masonry.h>

@interface ButtonViewController ()

@property (strong, nonatomic) NSArray *examples;

@end

@implementation ButtonViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
}

-(NSArray *)examples
{
    if (!_examples){
        //Eg1: Highlighted turquoise
        MXButton *eg1 = [[MXButton alloc] initWithHighlightColor:[NSColor colorWithCalibratedRed:0.0 green:0.9 blue:0.9 alpha:0.7]];
        eg1.backgroundColor = [NSColor colorWithCalibratedRed:0.0 green:0.5 blue:1.0 alpha:0.7];
        eg1.textColor = [NSColor colorWithWhite:1.0 alpha:0.7];
        eg1.title = @"Turquoise";
        
        //Eg2:
        MXButton *eg2 = [[MXButton alloc] init];
        eg2.highlightColor = [NSColor clearColor];
        eg2.textColor = [NSColor colorWithWhite:1.0 alpha:1.0];
        eg2.highlightTextColor = [NSColor colorWithWhite:0.0 alpha:0.7];
        eg2.title = @"White Text";
        
        //Eg3: No SubPixel Antialiasing
        MXButton *eg3 = [[MXButton alloc] init];
        eg3.highlightColor = [NSColor clearColor];
        eg3.textColor = [NSColor colorWithWhite:1.0 alpha:1.0];
        eg3.highlightTextColor = [NSColor colorWithWhite:0.0 alpha:0.7];
        eg3.title = @"White Text minus SPAA";
        eg3.subpixelAntialiasing = NO;
        
        //Eg4:Transparent BG
        MXButton *eg4 = [[MXButton alloc] init];
        eg4.backgroundColor = [NSColor clearColor];
        eg4.highlightColor = [NSColor clearColor];
        eg4.textColor = [NSColor colorWithWhite:0.0 alpha:0.9];
        eg4.highlightTextColor = [NSColor colorWithWhite:0.0 alpha:0.5];
        eg4.title = @"Transparency";
        
        //Eg5: Padding
        MXButton *eg5 = [[MXButton alloc] init];
        eg5.backgroundColor = [NSColor colorWithCalibratedRed:0.0 green:1.0 blue:0.7 alpha:1.0];
        eg5.highlightColor = [NSColor colorWithCalibratedRed:0.0 green:1.0 blue:0.5 alpha:1.0];
        eg5.textColor = [NSColor colorWithWhite:1.0 alpha:0.8];
        eg5.highlightTextColor = [NSColor colorWithWhite:0.0 alpha:1.0];
        eg5.padding = NSEdgeInsetsMake(20, 50, 20, 50);
        eg5.title = @"Cushion for the pushin'..";
        
        //Eg6: Disappearing Text
        MXButton *eg6 = [[MXButton alloc] init];
        eg6.backgroundColor = [NSColor clearColor];
        eg6.highlightColor = [NSColor clearColor];
        eg6.textColor = [NSColor colorWithWhite:1.0 alpha:0.8];
        eg6.highlightTextColor = [NSColor clearColor];
        eg6.title = @"I can disappear";
        
        //Eg7
        MXButton *eg7 = [[MXButton alloc] init];
        eg7.backgroundColor = [NSColor colorWithCalibratedRed:1.0 green:0.5 blue:0.1 alpha:0.3];
        eg7.highlightColor = [NSColor colorWithCalibratedRed:1.0 green:0.5 blue:0.1 alpha:0.5];
        eg7.textColor = [NSColor colorWithWhite:1.0 alpha:0.8];
        eg7.highlightTextColor = [NSColor colorWithWhite:1.0 alpha:1.0];
        eg7.padding = NSEdgeInsetsMake(10, 10, 10, 10);
        eg7.title = @"Need\nLines";
        
        _examples = [NSArray arrayWithObjects:eg1, eg3, eg2, eg4, eg6, eg5, eg7, nil];
    }
    return _examples;
}

- (void)loadView
{
    NSScrollView *scrollView = [[NSScrollView alloc] initWithFrame:NSMakeRect(0, 0, 500, 500)];
    self.view = scrollView;
    
    NSTableView *tableView = [[NSTableView alloc] init];
    tableView.delegate = self;
    tableView.dataSource = self;
    tableView.backgroundColor = [NSColor whiteColor];
    tableView.rowHeight = 100;
    
    NSTableColumn *column1 = [[NSTableColumn alloc] initWithIdentifier:@"Button Examples"];
    [column1 setWidth:500];
    
    scrollView.documentView = tableView;
    scrollView.hasVerticalScroller = YES;
}

#pragma mark Tableview methods
- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView
{
    return [self.examples count];
}

- (NSView *)tableView:(NSTableView *)tableView viewForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row
{
    MXButton *testButton = [[MXButton alloc] initWithHighlightColor:[NSColor colorWithCalibratedRed:0.0 green:0.9 blue:0.9 alpha:0.7]];
    testButton.textColor = [NSColor colorWithWhite:1.0 alpha:0.7];
    testButton.title = @"Button";
    
    return testButton;
}

- (NSTableRowView *)tableView:(NSTableView *)tableView rowViewForRow:(NSInteger)row{
    
    NSTableRowView *rowView = [[NSTableRowView alloc] init];
    MXButton *testButton = self.examples[row];
    [rowView addSubview:testButton];
    [testButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(rowView);
    }];
    
    return rowView;
}
 
- (void)tableView:(NSTableView *)tableView didAddRowView:(NSTableRowView *)rowView forRow:(NSInteger)row
{
    if (row % 2 == 0){
        rowView.backgroundColor = [NSColor colorWithCalibratedWhite:0.0 alpha:0.15];
    }
}
@end
