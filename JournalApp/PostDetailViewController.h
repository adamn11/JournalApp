//
//  PostDetailViewController.h
//  JournalApp
//
//  Created by Adam Nguyen on 11/13/14.
//  Copyright (c) 2014 Team8. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>

@interface PostDetailViewController : UIViewController
@property PFObject *journal;
@property (weak, nonatomic) IBOutlet UITextView *journalText;

@end
