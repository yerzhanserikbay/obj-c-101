//
//  ViewController.m
//  Section16(SnapAtackImageGame)
//
//  Created by YS on 3/28/19.
//  Copyright © 2019 YS. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    timerInt = 20;
    scoreInt = 0;
    gameMode = 0;
    
    self.timeLabel.text = [NSString stringWithFormat:@"Time: %i", timerInt];
    self.scoreLabel.text = [NSString stringWithFormat:@"Score: %i", scoreInt];
}


- (IBAction)startGameAction:(id)sender {
    if (timerInt == 20) {
        mainTimer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(updateTimer) userInfo:nil repeats:YES];
        imageTimer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(cardUpdate) userInfo:nil repeats:YES];
        
        self.startButton.enabled = NO;
        self.startButton.alpha = 0.25;
        [self.startButton setTitle:@"Snap" forState:UIControlStateNormal];
    }
    
    if (gameMode == 1) {
        if ([self.leftCardImageView.image isEqual:self.rightCardImageView.image]) {
            scoreInt += 1;
            self.scoreLabel.text = [NSString stringWithFormat:@"Score: %i", scoreInt];
        } else {
            scoreInt -= 1;
            self.scoreLabel.text = [NSString stringWithFormat:@"Score: %i", scoreInt];
        }
        
        if (timerInt == 0) {
            timerInt = 20;
            scoreInt = 0;
            
            self.timeLabel.text = [NSString stringWithFormat:@"Time: %i", timerInt];
            self.scoreLabel.text = [NSString stringWithFormat:@"Score: %i", scoreInt];
            
            self.leftCardImageView.image = [UIImage imageNamed:@"blue_cover"];
            self.rightCardImageView.image = [UIImage imageNamed:@"blue_cover"];
            
            [self.startButton setTitle:@"Start" forState:UIControlStateNormal];
        }
    } 
}

- (void)restartTrigger {
    self.startButton.enabled = YES;
    self.startButton.alpha = 1.0;
    
    gameMode = 1;
}

- (void)cardUpdate {
    NSArray *cardList = @[@"ace_of_hearts",
                          @"2_of_hearts",
                          @"3_of_hearts",
                          @"4_of_hearts",
                          @"5_of_hearts",
                          @"6_of_hearts",
                          @"7_of_hearts",
                          @"8_of_hearts",
                          @"9_of_hearts",
                          @"10_of_hearts"];
    int randomCardLeft = arc4random() % cardList.count;
    self.leftCardImageView.image = [UIImage imageNamed:cardList[randomCardLeft]];
    
    int randomCardRight = arc4random() % cardList.count;
    self.rightCardImageView.image = [UIImage imageNamed:cardList[randomCardRight]];
}


- (void)updateTimer {
    timerInt -= 1;
    self.timeLabel.text = [NSString stringWithFormat:@"Time: %i", timerInt];
    
    gameMode = 1;
    
    self.startButton.enabled = YES;
    self.startButton.alpha = 1.0;
    
    if (timerInt == 0) {
        [mainTimer invalidate];
        [imageTimer invalidate];
        
        self.startButton.enabled = NO;
        self.startButton.alpha = 0.25;
        
        [self.startButton setTitle:@"Restart" forState:UIControlStateNormal];
        
        [self performSelector:@selector(restartTrigger) withObject:nil afterDelay:4.0];
        
        gameMode = 1;
    }
}

@end
