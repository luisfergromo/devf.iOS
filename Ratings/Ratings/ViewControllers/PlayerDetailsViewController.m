//
//  PlayerDetailsViewController.m
//  Ratings
//
//  Created by Luis Romo on 11/10/17.
//  Copyright © 2017 DevF. All rights reserved.
//

#import "PlayerDetailsViewController.h"
#import "GamePickerViewController.h"
#import "Player.h"

@interface PlayerDetailsViewController ()
@property (weak, nonatomic) IBOutlet UILabel *detailLabel;
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;

@end

@implementation PlayerDetailsViewController

NSString *_game; //mejor hacer property's

- (void)viewDidLoad {
    [super viewDidLoad];
    self.detailLabel.text = _game;
    if(self.game && self.player){

        
    }
}

#pragma mark - GamePickerViewControllerDelegate
-(void) gamePickerViewController:(GamePickerViewController *)controller didSelectGame:(NSString *)game{
    _game = game;
    self.detailLabel.text = _game;
    
    [self.navigationController popViewControllerAnimated:YES];
}

#pragma mark - Table view data source
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0) {
        [self.nameTextField becomeFirstResponder];
    }
}

#pragma mark - Navigation

//In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"PickGame"]) {
        GamePickerViewController *gamePickerViewController = segue.destinationViewController;
        gamePickerViewController.delegate = self;
        gamePickerViewController.game = _game;
    }
}

#pragma mark - Navigation items events

- (IBAction)onCancelTapped:(id)sender {
    if(self.delegate &&[self.delegate respondsToSelector:@selector(playerDetailsViewControllerDidCancel:)]){
       [self.delegate playerDetailsViewControllerDidCancel:self];
    }
}
- (IBAction)onDoneTapped:(id)sender {
    if(self.delegate &&[self.delegate respondsToSelector:@selector(playerDetailsViewController:didAddPlayer:)]){
//        Player *player = [[Player alloc] init];
//        player.name = self.nameTextField.text;
//        player.game = @"Chess";
//        player.rating = 1;
//        [self.delegate playerDetailsViewController:self didAddPlayer:player];
        
        Player *player = [[Player alloc] init];
        player.name = self.nameTextField.text;
        player.game = _game;  // only this line is changed
        player.rating = 1;
        
        [self.delegate playerDetailsViewController:self didAddPlayer:player];
    }

}
- (id)initWithCoder:(NSCoder *)aDecoder
{
    if ((self = [super initWithCoder:aDecoder])) {
        NSLog(@"init PlayerDetailsViewController");
        _game = @"Chess";
    }
    return self;
}

@end
