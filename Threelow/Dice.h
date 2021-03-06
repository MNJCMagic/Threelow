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
@property (nonatomic, assign) NSNumber* diceID;

- (instancetype)initWithID:(NSNumber*)dieNumber;
- (void)randomizeValue;

@end
