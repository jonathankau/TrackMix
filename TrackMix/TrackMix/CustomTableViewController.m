//
//  CustomTableView.m
//  TrackMix
//
//  Created by Jonathan Kau on 11/21/14.
//  Copyright (c) 2014 Jonathan Kau. All rights reserved.
//

#import "CustomTableViewController.h"

@implementation CustomTableViewController

NSArray *data;

-(void) viewDidLoad
{
    [super viewDidLoad];
    
    // Initialize table data
    data = [NSArray arrayWithObjects:@"Potato", @"Tomato", @"Mushroom", nil];
}

- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView {
    
    // how many rows do we have here?
    return data.count;
}

- (NSView *)tableView:(NSTableView *)tableView
   viewForTableColumn:(NSTableColumn *)tableColumn
                  row:(NSInteger)row {
    
    // Get an existing cell with the MyView identifier if it exists
    NSTextField *result = [tableView makeViewWithIdentifier:@"MyView" owner:self];
    
    // There is no existing cell to reuse so create a new one
    if (result == nil) {
        
        // Create the new NSTextField with a frame of the {0,0} with the width of the table.
        // Note that the height of the frame is not really relevant, because the row height will modify the height.
        NSRect frameRect = NSMakeRect(20, 20, 100, 140);
        result = [[NSTextField alloc] initWithFrame: frameRect];
        
        // The identifier of the NSTextField instance is set to MyView.
        // This allows the cell to be reused.
        result.identifier = @"MyView";
    }
    
    // result is now guaranteed to be valid, either as a reused cell
    // or as a new cell, so set the stringValue of the cell to the
    // nameArray value at row
    result.stringValue = [data objectAtIndex:row];
    
    // Return the result
    return result;
    
}
- (IBAction)test:(id)sender {
}
- (IBAction)enterMessage:(id)sender {
    NSLog(@"Test: %@", [sender stringValue]);
}

@end
