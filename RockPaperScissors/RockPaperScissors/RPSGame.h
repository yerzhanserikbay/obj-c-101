//
//  RPSGame.h
//  RockPaperScissors
//
//  Created by YS on 3/11/19.
//  Copyright © 2019 YS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RPSTurn.h"

@interface RPSGame : NSObject

@property (nonatomic) RPSTurn *firstTurn;
@property (nonatomic) RPSTurn *secondTurn;

-(instancetype)initWithFirstTurn:(RPSTurn*)playerTurn
                      secondTurn:(RPSTurn*)computerTurn;

-(RPSTurn*)winner;
-(RPSTurn*)loser;

-(NSString*)resultString:(RPSGame*)game;

@end
