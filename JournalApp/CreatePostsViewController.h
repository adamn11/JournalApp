//
//  CreatePostsViewController.h
//  JournalApp
//
//  Created by Adam Nguyen on 10/22/14.
//  Copyright (c) 2014 Team8. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>


@interface CreatePostsViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *titleText;
@property (weak, nonatomic) IBOutlet UITextField *tagsText;
@property (weak, nonatomic) IBOutlet UITextView *entryText;
- (IBAction)submitPost:(UIButton *)sender;

@end
