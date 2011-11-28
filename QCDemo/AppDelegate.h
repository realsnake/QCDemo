//
//  AppDelegate.h
//  QCDemo
//
//  Created by snake on 11-11-28.
//  Copyright (c) 2011年 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <Quartz/Quartz.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;

@property (assign) IBOutlet QCView *qcView;

- (IBAction)loadComposition:(id)sender;

@end
