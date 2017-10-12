//
//  PlayeTableViewCell.h
//  Ratings
//
//  Created by Luis Romo on 11/10/17.
//  Copyright © 2017 DevF. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PlayeTableViewCell : UITableViewCell
@property (nonatomic, weak) IBOutlet UILabel *nameLabel;
@property (nonatomic, weak) IBOutlet UILabel *gameLabel;
@property (nonatomic, weak) IBOutlet UIImageView *ratingImageView;
@end
