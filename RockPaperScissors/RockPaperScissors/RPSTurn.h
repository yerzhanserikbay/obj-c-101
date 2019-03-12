//
//  RPSTurn.h
//  RockPaperScissors
//
//  Created by YS on 3/11/19.
//  Copyright © 2019 YS. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, Move) {
    Rock,
    Paper,
    Scissors,
    Invalid
};

@interface RPSTurn : NSObject

@property (nonatomic) Move move;

-(instancetype)initWithMove:(Move) move;
-(NSString*) description;
-(BOOL)defeats:(RPSTurn*) opponent;

@end
