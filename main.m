//
//  main.m
//  AtBash
//
//  Created by Oliver Short on 5/4/16.
//  Copyright © 2016 Oliver Short. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
NSString *inputString = @"Hey my name is Oliver!";
        
NSMutableString *cipher = [[NSMutableString alloc]init];
NSString *alphabet = @"abcdefghijklmnopqrstuvwxyz";
        
// Individually look at each character in the input string using a for loop
        for (int i = 0; i < [inputString length]; i++) {
            NSString *letter = [NSString stringWithFormat: @"%C", [inputString characterAtIndex: i]];
// If the letter is found in the lower
        if ([alphabet containsString: letter] ) {
            for (NSUInteger ib = 0; ib <[alphabet length]; ib++)
                {
                    if ([alphabet characterAtIndex:ib] == [letter characterAtIndex:0])
                    {
                        NSUInteger change = 25 - ib;
                        NSString *addLetter = [NSString stringWithFormat:@"%C", [alphabet characterAtIndex:change]];
                        [cipher appendString:addLetter];
                    }
                }
            }else{
                [cipher appendString:letter];
            }
        }
        NSLog(@"'%@' becomes '%@'", inputString, cipher);
    }
    return 0;
}
