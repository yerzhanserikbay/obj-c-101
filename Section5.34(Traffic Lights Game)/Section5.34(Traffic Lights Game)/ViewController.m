//
//  ViewController.m
//  Section5.34(Traffic Lights Game)
//
//  Created by YS on 3/22/19.
//  Copyright © 2019 YS. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    scoreInt = 0;
    self.scoreLabel.text = [NSString stringWithFormat:@"%i", scoreInt];
}

- (IBAction)startButtonPressed:(id)sender {
    if (scoreInt == 0) {
        timerInt = 3;
        timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(startTimer) userInfo:nil repeats:YES];
        
        self.scoreLabel.text = [NSString stringWithFormat:@"%i", scoreInt];
        
        [self.startButton setTitle:@"" forState:UIControlStateNormal];
        self.startButton.enabled = NO;
    } else {
        [scoreTimer invalidate];
        [self.startButton setTitle:@"Restart" forState:UIControlStateNormal];
    }
    
    if (timerInt == 0) {
        scoreInt = 0;
        timerInt = 0;
    }
    
}

- (void)startTimer {
    timerInt -= 1;
    switch (timerInt) {
        case 2:
            self.trafficLight.image = [UIImage imageNamed:@"trafficLight3"];
            break;
        case 1:
            self.trafficLight.image = [UIImage imageNamed:@"trafficLight2"];
            break;
        case 0:
            self.trafficLight.image = [UIImage imageNamed:@"trafficLight1"];
            [timer invalidate];
            
            scoreTimer = [NSTimer scheduledTimerWithTimeInterval:0.0001 target:self selector:@selector(scoreCounter) userInfo:nil repeats:YES];
            
            [self.startButton setTitle:@"Stop" forState:UIControlStateNormal];
            self.startButton.enabled = YES;
            
            break;
        default:
            break;
    }
}

- (void)scoreCounter {
    scoreInt += 1;
    self.scoreLabel.text = [NSString stringWithFormat:@"%i", scoreInt];
}

@end
