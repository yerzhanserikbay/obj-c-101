//
//  ViewController.h
//  Section9.56(Shake Me Silly)
//
//  Created by YS on 3/26/19.
//  Copyright © 2019 YS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    NSTimer *timer;
    
    int timeInt;
    int scoreInt;
    int gameMode;
    int imageInt;
    
}

@property (weak, nonatomic) IBOutlet UILabel *timerLabel;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;
@property (weak, nonatomic) IBOutlet UIButton *startButton;

- (IBAction)startButtonPressed:(id)sender;

@end

