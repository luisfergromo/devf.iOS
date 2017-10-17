//
//  PlayerDetailsViewController.h
//  Ratings
//
//  Created by Luis Romo on 11/10/17.
//  Copyright © 2017 DevF. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GamePickerViewController.h"

@class PlayerDetailsViewController;
@class Player;

@protocol PlayerDetailsViewControllerDelegate <NSObject>
- (void)playerDetailsViewControllerDidCancel:(PlayerDetailsViewController *)controller;
- (void)playerDetailsViewController:(PlayerDetailsViewController *)controller didAddPlayer:(Player *)player;
-(void)playerDetailsViewController:(PlayerDetailsViewController *)controller didEditPlayer:(Player *)player;
@end

@interface PlayerDetailsViewController : UITableViewController <GamePickerViewControllerDelegate>

@property (nonatomic, weak) id <PlayerDetailsViewControllerDelegate> delegate;

@property (weak, nonatomic) IBOutlet UITableViewCell *detailViewCell;

@property(weak,nonatomic)NSString *game;
@property(weak,nonatomic)NSString *player;

- (IBAction)onCancelTapped:(id)sender;
- (IBAction)onDoneTapped:(id)sender;
@end
