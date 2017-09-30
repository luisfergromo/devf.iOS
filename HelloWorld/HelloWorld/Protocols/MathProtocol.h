//
//  MathProtocol.h
//  HelloWorld
//
//  Created by Luis Romo on 29/09/17.
//  Copyright © 2017 devf. All rights reserved.
//
#import <Foundation/Foundation.h>
@protocol AdditionDelegate <NSObject>
@required
-(int) addInt:(int) num1 withInt:(int) num2;

@optional
-(float) addFloat:(float) num1 withFloat:(float) num2;

@end

@protocol MultiplicationDelegate

@end

@protocol SubtractionDelegate

@end

@protocol DivisionDelegate
@end
