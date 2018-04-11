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
        Dice *die0 = [[Dice alloc] initWithID:[NSNumber numberWithInt:1]];
        Dice *die1 = [[Dice alloc] initWithID:[NSNumber numberWithInt:2]];
        Dice *die2 = [[Dice alloc] initWithID:[NSNumber numberWithInt:3]];
        Dice *die3 = [[Dice alloc] initWithID:[NSNumber numberWithInt:4]];
        Dice *die4 = [[Dice alloc] initWithID:[NSNumber numberWithInt:5]];
        
        //adds dice to dice array
        _dice = [NSArray arrayWithObjects:die0, die1, die2, die3, die4, nil];
        
        //creates empty helddice array
        _heldDice = [[NSMutableSet alloc] init];
    }
    return self;
}

-(void)rollDice {
    for (Dice *die in self.dice) {
        if (![self.heldDice containsObject:die.diceID]) {
            [die randomizeValue];
            NSLog(@"%@: %ld", die.diceID, die.value);
            
        } else {
            NSLog(@"[%@: %ld]", die.diceID, die.value);
        }
        
    }
}

-(void)holdDie:(NSNumber*)num {
    if ([self.heldDice containsObject:num]) {
        [self.heldDice removeObject:num];
    } else {
        [self.heldDice addObject:num];
    }
    
    
//    for (NSNumber *n in self.heldDice) {
//        if
//    }
//    [_heldDice addObject:num];
}

-(void)askHold {
    
    NSNumberFormatter *f = [[NSNumberFormatter alloc] init];
    f.numberStyle = NSNumberFormatterDecimalStyle;
    char inputChars[255];
    NSLog(@"Which die or dice would you like to hold/unhold? Please separate by commas, or hit enter to re-roll.\n");
    fgets(inputChars, 255, stdin);
    NSString *inputString = [NSString stringWithUTF8String:inputChars];
    NSCharacterSet *space = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    NSString *input = [inputString stringByTrimmingCharactersInSet:space];
    if (input.length != 0) {
        NSArray *charArray = [input componentsSeparatedByString:@","];
        for (NSString *string in charArray) {
        NSNumber *myNumber = [f numberFromString:string];
        [self holdDie:myNumber];
    }
  
    
}
}
@end
