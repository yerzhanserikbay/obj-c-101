//
//  ViewController.h
//  Section19.103(AnimalSoundboard)
//
//  Created by YS on 3/28/19.
//  Copyright © 2019 YS. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>

@interface ViewController : UIViewController {
    SystemSoundID catID;
    SystemSoundID frogID;
    SystemSoundID dogID;
    SystemSoundID pigID;
    SystemSoundID shipID;
    SystemSoundID horseID;
}

@property (weak, nonatomic) IBOutlet UIButton *catButton;
@property (weak, nonatomic) IBOutlet UIButton *frogButton;
@property (weak, nonatomic) IBOutlet UIButton *dogButton;
@property (weak, nonatomic) IBOutlet UIButton *pigButton;
@property (weak, nonatomic) IBOutlet UIButton *shipButton;
@property (weak, nonatomic) IBOutlet UIButton *horseButton;

- (IBAction)catButtonPressed:(id)sender;
- (IBAction)frogButtonPressed:(id)sender;
- (IBAction)dogButtonPressed:(id)sender;
- (IBAction)pigButtonPressed:(id)sender;
- (IBAction)shipButtonPressed:(id)sender;
- (IBAction)horseButtonPressed:(id)sender;

@end

