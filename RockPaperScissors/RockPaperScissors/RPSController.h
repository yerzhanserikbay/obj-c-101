//
//  RPSController.h
//  RockPaperScissors
//
//  Created by YS on 3/11/19.
//  Copyright © 2019 YS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RPSGame.h"

@interface RPSController : NSObject

@property (nonatomic) RPSGame *game;

-(void)throwDown:(Move) playersMove;
-(NSString*)messageForGame:(RPSGame*) game;

@end

