//
//  ViewController.h
//  Section18(AudioAndVideo)
//
//  Created by YS on 3/28/19.
//  Copyright © 2019 YS. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>

@interface ViewController : UIViewController {
    SystemSoundID soundID;
}

- (IBAction)hitMeButtonPressed:(id)sender;

@end

