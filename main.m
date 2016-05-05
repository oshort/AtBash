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
NSString *upperAlphabet = @"ABCDEFGHIJKLMNOPQRSTUVWXYZ";
NSString *lowerAlphabet = @"abcdefghijklmnopqrstuvwxyz";
        
// Individually look at each character in the input string using a for loop
        for (int i = 0; i < [inputString length]; i++) {
            NSString *letter = [NSString stringWithFormat: @"%C", [inputString characterAtIndex: i]];
            
        if ([lowerAlphabet containsString: letter] ) {
            for (NSUInteger ib = 0; ib <[lowerAlphabet length]; ib++)
                {
                    if ([lowerAlphabet characterAtIndex:ib] == [letter characterAtIndex:0])
                    {
                        NSUInteger change = 25 - ib;
                        NSString *addLetter = [NSString stringWithFormat:@"%C", [lowerAlphabet characterAtIndex:change]];
                        [cipher appendString:addLetter];
                    }
                }
            }else if([upperAlphabet containsString:letter]){
                for (NSUInteger ib = 0; ib<[upperAlphabet length];ib++)
                {
                    if ([upperAlphabet characterAtIndex:ib] == [letter characterAtIndex:0])
                    {
                        NSUInteger change = 25 - ib;
                        NSString *addLetter = [NSString stringWithFormat:@"%C", [upperAlphabet characterAtIndex:change]];
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
