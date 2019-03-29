//
//  ViewController.m
//  Section19.103(AnimalSoundboard)
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
    [[self.catButton imageView] setContentMode:UIViewContentModeScaleAspectFit];
    [[self.frogButton imageView] setContentMode:UIViewContentModeScaleAspectFit];
    [[self.dogButton imageView] setContentMode:UIViewContentModeScaleAspectFit];
    [[self.pigButton imageView] setContentMode:UIViewContentModeScaleAspectFit];
    [[self.shipButton imageView] setContentMode:UIViewContentModeScaleAspectFit];
    [[self.horseButton imageView] setContentMode:UIViewContentModeScaleAspectFit];
    
    NSURL *soundURL1 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Cat" ofType:@"wav"]];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)soundURL1, &catID);
    
    NSURL *soundURL2 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Frog" ofType:@"wav"]];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)soundURL2, &frogID);
    
    NSURL *soundURL3 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Dog" ofType:@"wav"]];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)soundURL3, &dogID);
    
    NSURL *soundURL4 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Pig" ofType:@"wav"]];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)soundURL4, &pigID);
    
    NSURL *soundURL5 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Sheep" ofType:@"wav"]];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)soundURL5, &shipID);
    
    NSURL *soundURL6 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Horse" ofType:@"mp3"]];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)soundURL6, &horseID);
}


- (IBAction)catButtonPressed:(id)sender {
    AudioServicesPlaySystemSound(catID);
}

- (IBAction)frogButtonPressed:(id)sender {
    AudioServicesPlaySystemSound(frogID);
}

- (IBAction)dogButtonPressed:(id)sender {
    AudioServicesPlaySystemSound(dogID);
}

- (IBAction)pigButtonPressed:(id)sender {
    AudioServicesPlaySystemSound(pigID);
}

- (IBAction)shipButtonPressed:(id)sender {
    AudioServicesPlaySystemSound(shipID);
}

- (IBAction)horseButtonPressed:(id)sender {
    AudioServicesPlaySystemSound(horseID);
}

@end
