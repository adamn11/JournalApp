//
//  SettingsViewController.h
//  JournalApp
//
//  Created by Adam Nguyen on 10/22/14.
//  Copyright (c) 2014 Team8. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>


@interface YourPostsViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *TagsLabel;
@property (weak, nonatomic) IBOutlet UITextView *PostText;

@end
