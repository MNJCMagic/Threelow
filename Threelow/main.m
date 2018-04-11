//
//  main.m
//  Threelow
//
//  Created by Mike Cameron on 2018-04-11.
//  Copyright © 2018 Mike Cameron. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
#import "GameController.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        GameController *controller = [[GameController alloc] init];
        NSNumberFormatter *f = [[NSNumberFormatter alloc] init];
        f.numberStyle = NSNumberFormatterDecimalStyle;
        BOOL play = NO;
        
        char inputChars[255];
        printf("roll to roll\n");
        fgets(inputChars, 255, stdin);
        NSString *inputString = [NSString stringWithUTF8String:inputChars];
        NSCharacterSet *space = [NSCharacterSet whitespaceAndNewlineCharacterSet];
        NSString *input = [inputString stringByTrimmingCharactersInSet:space];
        
        if([input isEqualToString:@"roll"]) {
            play = true;
        }
        while (play) {
            [controller rollDice];
            [controller askHold];
        
    }
    return 0;
}
}
