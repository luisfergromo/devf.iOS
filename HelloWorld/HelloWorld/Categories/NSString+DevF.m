//
//  NSString+DevF.m
//  HelloWorld
//
//  Created by Luis Romo on 29/09/17.
//  Copyright © 2017 devf. All rights reserved.
//

#import "NSString+DevF.h"

//@implementation NSString_DevF
@implementation NSString (DevF)
-(unichar) getFirstRepeatedChar{
    unichar r=0;
    for(int i=0;i<self.length;i++){
        NSString *subString = [self substringFromIndex:i+1];
        unichar tmpChar = [self characterAtIndex : i];
        NSInteger location = [subString rangeOfString:[NSString   stringWithFormat:@"%c",tmpChar]].location;
            //        if(foundRange==0){
            //            r =tmpChar;
            //        }
    }return r;
}
-(NSString *) reverseString{
    NSString *reversedString = @"";
    NSArray *stringComponents = [self componentsSeparatedByString:@" "];
    for(int i=(int)stringComponents.count-1; i>=0; i--) {
        NSString *item = stringComponents[i];
        reversedString = [reversedString stringByAppendingString:item];
        reversedString = [reversedString stringByAppendingString:@" "];
    }
    return reversedString;
}
@end
