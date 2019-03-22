//
//  RPSController.m
//  RockPaperScissors
//
//  Created by YS on 3/11/19.
//  Copyright © 2019 YS. All rights reserved.
//

#import "RPSController.h"

@implementation RPSController

-(void)throwDown:(Move) playersMove {
    // Here the RPSTurn class generates the opponent's move
    RPSTurn *playersTurn = [[RPSTurn alloc] initWithMove:playersMove];
    RPSTurn *computersTurn = [[RPSTurn alloc] init];

    //// The RPSGame class stores the results of the a game
    self.game = [[RPSGame alloc] initWithFirstTurn:playersTurn
                                        secondTurn:computersTurn];
//    RPSGame *game = [[RPSGame alloc] initWithFirstTurn:playersTurn
//                                            secondTurn:computersTurn];
//    [self setGame:game];
//
}

-(NSString*)messageForGame:(RPSGame*) game {
    // First, handle the tie
    if (game.firstTurn.move == game.secondTurn.move) {
        return @"It's a tie!";
    } else {
        // Then build up the results message "Rock defeats Scissors. You Win!" etc.
        NSString *winnerString = [[game winner] description];
        NSString *loserString = [[game loser] description];
        NSString *resultsString = [game resultString: game];
        
        NSString *wholeString = [NSString stringWithFormat:@"%@ %@ %@ %@ %@", winnerString, @" defeats ",  loserString, @".", resultsString];
        return wholeString;
    }
}

@end
