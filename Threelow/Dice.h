//
//  Dice.h
//  Threelow
//
//  Created by Mike Cameron on 2018-04-11.
//  Copyright © 2018 Mike Cameron. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dice : NSObject

@property (nonatomic, assign) NSInteger value;
@property (nonatomic, assign) NSInteger diceID;

- (instancetype)initWithID:(NSInteger)dieNumber;
- (void)randomizeValue;

@end
