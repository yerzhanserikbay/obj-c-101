//
//  ViewController.h
//  Section16(SnapAtackImageGame)
//
//  Created by YS on 3/28/19.
//  Copyright © 2019 YS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    NSTimer *mainTimer;
    NSTimer *imageTimer;
    
    int timerInt;
    int scoreInt;
    int gameMode;
}

@property (weak, nonatomic) IBOutlet UIImageView *leftCardImageView;
@property (weak, nonatomic) IBOutlet UIImageView *rightCardImageView;
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;
@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;
@property (weak, nonatomic) IBOutlet UIButton *startButton;

- (IBAction)startGameAction:(id)sender;

@end

