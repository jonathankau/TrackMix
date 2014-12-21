//
//  ViewController.m
//  TrackMix
//
//  Created by Jonathan Kau on 11/20/14.
//  Copyright (c) 2014 Jonathan Kau. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
    
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}
- (IBAction)enterMessage:(id)sender {
    NSLog(@"Hallo: %@", [sender stringValue]);
}

@end
