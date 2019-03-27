//
//  ViewController.m
//  Section9.59(Simon Says)
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
    self.simonLabel.layer.cornerRadius = 20;
    self.simonLabel.clipsToBounds = YES;
    
    timeInt = 20;
    scoreInt = 0;
    gameMode = 0;
    
    self.timeLabel.text = [NSString stringWithFormat:@"Time: %i", timeInt];
    self.scoreLabel.text = [NSString stringWithFormat:@"Score: %i", scoreInt];
    
    self.leftSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleSwipes:)];
    self.rightSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleSwipes:)];
    self.upSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleSwipes:)];
    self.downSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleSwipes:)];
    
    self.leftSwipe.direction = UISwipeGestureRecognizerDirectionLeft;
    self.rightSwipe.direction = UISwipeGestureRecognizerDirectionRight;
    self.upSwipe.direction = UISwipeGestureRecognizerDirectionUp;
    self.downSwipe.direction = UISwipeGestureRecognizerDirectionDown;
    
    [self.view addGestureRecognizer:self.leftSwipe];
    [self.view addGestureRecognizer:self.rightSwipe];
    [self.view addGestureRecognizer:self.upSwipe];
    [self.view addGestureRecognizer:self.downSwipe];
    
    
}

- (IBAction)startButtonPressed:(id)sender {
    if (timeInt == 20) {
        timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(updateCounter) userInfo:nil repeats:YES];
        
        [self simonSays];
        gameMode = 1;
        
        self.startButton.enabled = NO;
        self.startButton.alpha = 0.25;
    }
    
    if (timeInt == 0) {
        timeInt = 20;
        scoreInt = 0;
        
        self.timeLabel.text = [NSString stringWithFormat:@"Time: %i", timeInt];
        self.scoreLabel.text = [NSString stringWithFormat:@"Score: %i", scoreInt];
        
        [self.startButton setTitle:@"Restart" forState:UIControlStateNormal];
        
        self.simonLabel.text = @"Simon Says";
    }
}

- (void)simonSays {
    NSArray *array = @[@"Simon Says Swipe Left",
                       @"Simon Says Swipe Right",
                       @"Simon Says Swipe Up",
                       @"Simon Says Swipe Down",
                       @"Swipe Left",
                       @"Swipe Right",
                       @"Swipe Up",
                       @"Swipe Down"];
    
    int randonWord = arc4random() % array.count;
    self.simonLabel.text = array[randonWord];
    
    simonTimer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(simonSays) userInfo:nil repeats:NO];
}

- (void)updateCounter {
    timeInt -= 1;
    self.timeLabel.text = [NSString stringWithFormat:@"Time: %i", timeInt];
    
    if (timeInt == 0) {
        [timer invalidate];
        [simonTimer invalidate];
        
        gameMode = 0;
        
        self.startButton.enabled = YES;
        self.startButton.alpha = 1.0;
        
        [self.startButton setTitle:@"Restart" forState:UIControlStateNormal];
    }
}

- (void)handleSwipes:(UISwipeGestureRecognizer *)sender {
    if (gameMode == 1) {
        switch (sender.direction) {
            case UISwipeGestureRecognizerDirectionLeft:
                [simonTimer invalidate];
                if ([self.simonLabel.text isEqualToString:@"Simon Says Swipe Left"] || [self.simonLabel.text isEqualToString:@"Swipe Left"]) {
                    scoreInt += 1;
                    self.scoreLabel.text = [NSString stringWithFormat:@"Score: %i", scoreInt];
                    [self simonSays];
                } else {
                    scoreInt -= 1;
                    self.scoreLabel.text = [NSString stringWithFormat:@"Score: %i", scoreInt];
                    [self simonSays];
                }
                break;
            case UISwipeGestureRecognizerDirectionRight:
                [simonTimer invalidate];
                if ([self.simonLabel.text isEqualToString:@"Simon Says Swipe Right"] || [self.simonLabel.text isEqualToString:@"Swipe Right"]) {
                    scoreInt += 1;
                    self.scoreLabel.text = [NSString stringWithFormat:@"Score: %i", scoreInt];
                    [self simonSays];
                } else {
                    scoreInt -= 1;
                    self.scoreLabel.text = [NSString stringWithFormat:@"Score: %i", scoreInt];
                    [self simonSays];
                }
                break;
            case UISwipeGestureRecognizerDirectionUp:
                [simonTimer invalidate];
                if ([self.simonLabel.text isEqualToString:@"Simon Says Swipe Up"] || [self.simonLabel.text isEqualToString:@"Swipe Up"]) {
                    scoreInt += 1;
                    self.scoreLabel.text = [NSString stringWithFormat:@"Score: %i", scoreInt];
                    [self simonSays];
                } else {
                    scoreInt -= 1;
                    self.scoreLabel.text = [NSString stringWithFormat:@"Score: %i", scoreInt];
                    [self simonSays];
                }
                break;
            case UISwipeGestureRecognizerDirectionDown:
                [simonTimer invalidate];
                if ([self.simonLabel.text isEqualToString:@"Simon Says Swipe Down"] || [self.simonLabel.text isEqualToString:@"Swipe Down"]) {
                    scoreInt += 1;
                    self.scoreLabel.text = [NSString stringWithFormat:@"Score: %i", scoreInt];
                    [self simonSays];
                } else {
                    scoreInt -= 1;
                    self.scoreLabel.text = [NSString stringWithFormat:@"Score: %i", scoreInt];
                    [self simonSays];
                }
                break;
                
            default:
                scoreInt -= 1;
                self.scoreLabel.text = [NSString stringWithFormat:@"Score: %i", scoreInt];
                [self simonSays];
        }
    }
    
}

@end
