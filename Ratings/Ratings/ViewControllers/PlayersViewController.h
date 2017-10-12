//
//  PlayersViewController.h
//  Ratings
//
//  Created by Luis Romo on 09/10/17.
//  Copyright © 2017 DevF. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PlayerDetailsViewController.h"
@interface PlayersViewController : UITableViewController <PlayerDetailsViewControllerDelegate>

@property  (nonatomic,strong)NSMutableArray *players;
@end
