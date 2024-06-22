//
//  AppDelegate.h
//  NSTreeNode_test
//
//  Created by Gregory John Casamento on 6/21/24.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property IBOutlet NSOutlineView *outlineView;
@property IBOutlet NSTreeController *treeController;

- (IBAction) refresh: (id)sender;

@end

