//
//  AppDelegate.m
//  QCDemo
//
//  Created by snake on 11-11-28.
//  Copyright (c) 2011年 __MyCompanyName__. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

@synthesize window = _window;
@synthesize qcView = _qcView;

- (void)dealloc
{
    [super dealloc];
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
}

- (IBAction)loadComposition:(id)sender 
{
    void (^handler) (NSInteger);
    
    NSOpenPanel *panel = [NSOpenPanel openPanel];
    
    [panel setAllowedFileTypes:[NSArray arrayWithObjects: @"qtz", nil]];
    
    handler = ^(NSInteger result){
        if(result == NSFileHandlingPanelOKButton){
            NSString *filePath = [[[panel URLs] objectAtIndex:0] path];
            if(![_qcView loadCompositionFromFile:filePath]){
                NSLog(@"Could not load composition!");
            }
        }
    };
    
    [panel beginSheetModalForWindow: _window completionHandler:handler];
}

@end
