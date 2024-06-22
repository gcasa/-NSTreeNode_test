//
//  AppDelegate.m
//  NSTreeNode_test
//
//  Created by Gregory John Casamento on 6/21/24.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property (strong) IBOutlet NSWindow *window;
@property (strong) NSTreeNode *root;

@end

@implementation AppDelegate

- (NSTreeNode *) buildNodes
{
  NSTreeNode *node = [[NSTreeNode alloc] initWithRepresentedObject: @"Root"];
  NSTreeNode *child = [[NSTreeNode alloc] initWithRepresentedObject: @"NSTreeNode-Child 0"];
  [node.mutableChildNodes addObject: child];
  
  return node;
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    self.root = [self buildNodes];
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


- (BOOL)applicationSupportsSecureRestorableState:(NSApplication *)app {
    return YES;
}

- (IBAction) refresh:(id)sender
{
    [self.outlineView reloadData];
}

@end
