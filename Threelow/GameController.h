//
//  GameController.h
//  Threelow
//
//  Created by Mike Cameron on 2018-04-11.
//  Copyright © 2018 Mike Cameron. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"

@interface GameController : NSObject

@property (nonatomic, strong) NSArray *dice;
@property (nonatomic, strong) NSMutableSet *heldDice;

-(void)resetDice;
-(void)rollDice;
-(void)askHold;
-(void)holdDie:(NSNumber*)num;

@end
