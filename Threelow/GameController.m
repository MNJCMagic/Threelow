//
//  GameController.m
//  Threelow
//
//  Created by Mike Cameron on 2018-04-11.
//  Copyright © 2018 Mike Cameron. All rights reserved.
//

#import "GameController.h"

@implementation GameController

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        //creates dice, assigns values and id
        Dice *die0 = [[Dice alloc] initWithID:1];
        Dice *die1 = [[Dice alloc] initWithID:2];
        Dice *die2 = [[Dice alloc] initWithID:3];
        Dice *die3 = [[Dice alloc] initWithID:4];
        Dice *die4 = [[Dice alloc] initWithID:5];
        
        //adds dice to dice array
        _dice = [NSArray arrayWithObjects:die0, die1, die2, die3, die4, nil];
        
        //creates empty helddice array
        _heldDice = [[NSMutableSet alloc] init];
    }
    return self;
}

-(void)rollDice {
    for (Dice *die in self.dice) {
        [die randomizeValue];
        NSLog(@"%ld: %ld", (long)die.diceID, die.value);
      
    }
    
}

@end
