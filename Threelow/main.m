//
//  main.m
//  Threelow
//
//  Created by Mike Cameron on 2018-04-11.
//  Copyright © 2018 Mike Cameron. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Dice *die1 = [[Dice alloc] init];
        Dice *die2 = [[Dice alloc] init];
        Dice *die3 = [[Dice alloc] init];
        Dice *die4 = [[Dice alloc] init];
        Dice *die5 = [[Dice alloc] init];
        
        BOOL play = true;
        
        while (play) {
            
            char inputChars[255];
            // char num[255];
            printf("roll to roll\n");
            fgets(inputChars, 255, stdin);
            NSString *inputString = [NSString stringWithUTF8String:inputChars];
            NSCharacterSet *space = [NSCharacterSet whitespaceAndNewlineCharacterSet];
            
            NSString *input = [inputString stringByTrimmingCharactersInSet:space];
            
            if ([input isEqualToString:@"roll"]) {
                
                
                [die1 randomizeValue];
                [die2 randomizeValue];
                [die3 randomizeValue];
                [die4 randomizeValue];
                [die5 randomizeValue];
                
                NSLog(@"%ld, %ld, %ld, %ld, %ld", die1.value, die2.value, die3.value, die4.value, die5.value);
            }
   
        }
        
    
        
        
        
    }
    return 0;
}
