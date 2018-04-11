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
        
        //creates dice
        Dice *die0 = [[Dice alloc] init];
        Dice *die1 = [[Dice alloc] init];
        Dice *die2 = [[Dice alloc] init];
        Dice *die3 = [[Dice alloc] init];
        Dice *die4 = [[Dice alloc] init];
        
        //adds dice to dice array
        _dice = [NSArray arrayWithObjects:die0, die1, die2, die3, die4, nil];
        
        //creates empty helddice array
        _heldDice = [[NSMutableArray alloc] init];
    }
    return self;
}

@end
