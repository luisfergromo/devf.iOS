//
//  PlayerDetailsViewController.h
//  Ratings
//
//  Created by Luis Romo on 11/10/17.
//  Copyright © 2017 DevF. All rights reserved.
//

#import <UIKit/UIKit.h>

@class PlayerDetailsViewController;

@protocol PlayerDetailsViewControllerDelegate <NSObject>
- (void)playerDetailsViewControllerDidCancel:(PlayerDetailsViewController *)controller;
- (void)playerDetailsViewControllerDidSave:(PlayerDetailsViewController *)controller;
@end

@interface PlayerDetailsViewController : UITableViewController

@property (weak, nonatomic) IBOutlet UITextField *nameTextField;

@property (nonatomic, weak) id <PlayerDetailsViewControllerDelegate> delegate;

- (IBAction)onCancelTapped:(id)sender;
- (IBAction)onDoneTapped:(id)sender;
@end
