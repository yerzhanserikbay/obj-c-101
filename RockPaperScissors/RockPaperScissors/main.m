//
//  main.m
//  RockPaperScissors
//
//  Created by YS on 3/8/19.
//  Copyright © 2019 YS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RPSController.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        RPSController* gameController = [[RPSController alloc] init];
        [gameController throwDown: Rock];
        NSString *resultsMessage = [gameController messageForGame:gameController.game];
        NSLog(@"%@", resultsMessage);
    }
    return 0;
}
