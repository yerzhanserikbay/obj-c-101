//
//  ViewController.m
//  Section9.56(Shake Me Silly)
//
//  Created by YS on 3/26/19.
//  Copyright © 2019 YS. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    timeInt = 10;
    scoreInt = 0;
    
    gameMode = 0;
    imageInt = 1;
    
    self.timerLabel.text = [NSString stringWithFormat:@"%i", timeInt];
    self.scoreLabel.text = [NSString stringWithFormat:@"%i", scoreInt];
}


- (IBAction)startButtonPressed:(id)sender {
    if (timeInt == 10) {
        timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(updateCounter) userInfo:nil repeats:YES];
        gameMode = 1;
        self.startButton.enabled = NO;
        self.startButton.alpha = 0.25;
    }
    
    if (timeInt == 0) {
        timeInt = 10;
        scoreInt = 0;
        imageInt = 0;
        
        self.imageView.image = [UIImage imageNamed:@"Face1"];
        self.scoreLabel.text = [NSString stringWithFormat:@"%i", scoreInt];
        self.timerLabel.text = [NSString stringWithFormat:@"%i", timeInt];
        [self.startButton setTitle:@"Start Game" forState:UIControlStateNormal];
    }
}

- (void)updateCounter {
    timeInt -= 1;
    self.timerLabel.text = [NSString stringWithFormat:@"%i", timeInt];
    
    if (timeInt == 0) {
        [timer invalidate];
        gameMode = 0;
        
        self.startButton.enabled = YES;
        self.startButton.alpha = 1.0;
        [self.startButton setTitle:@"Restart" forState:UIControlStateNormal];
    }
}

- (void)motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    if (event.subtype == UIEventSubtypeMotionShake) {
        if (gameMode == 1) {
            scoreInt += 1;
            self.scoreLabel.text = [NSString stringWithFormat:@"%i", scoreInt];
            
            imageInt += 1;
            
            if (imageInt == 12) {
                imageInt = 1;
            }
            self.imageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"Face%i", imageInt]];
        }
    }
}

@end
