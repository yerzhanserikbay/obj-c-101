//
//  ViewController.h
//  Section5.36(Tap ME Fast Raction Based Game)
//
//  Created by YS on 3/25/19.
//  Copyright © 2019 YS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    NSTimer *timer;
    
    int timeInt;
    int scoreInt;
    int gameMode;
}

@property (weak, nonatomic) IBOutlet UILabel *timeLabel;
@property (weak, nonatomic) IBOutlet UILabel *scroeLabel;
@property (weak, nonatomic) IBOutlet UIButton *startButton;

- (IBAction)startGame:(id)sender;
@end

