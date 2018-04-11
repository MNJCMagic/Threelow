//
//  Dice.m
//  Threelow
//
//  Created by Mike Cameron on 2018-04-11.
//  Copyright © 2018 Mike Cameron. All rights reserved.
//

#import "Dice.h"

@implementation Dice

- (instancetype)initWithID:(NSInteger)dieNumber;
{
    self = [super init];
    if (self) {
        _value = arc4random_uniform(6) + 1;
        _diceID = dieNumber;
    }
    return self;
}

-(void)randomizeValue {
    self.value = arc4random_uniform(6) + 1;
}

@end
