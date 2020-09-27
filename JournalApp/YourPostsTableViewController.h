//
//  YourPostsTableViewController.h
//  JournalApp
//
//  Created by Adam Nguyen on 11/13/14.
//  Copyright (c) 2014 Team8. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>
#include "PostDetailViewController.h"
@interface YourPostsTableViewController : UITableViewController

@property NSMutableArray *allObjects;
@property PFObject *currentJournal;

@end
