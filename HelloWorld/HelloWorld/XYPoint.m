//
//  XYPoint.m
//  HelloWorld
//
//  Created by Luis Romo on 29/09/17.
//  Copyright © 2017 devf. All rights reserved.
//

#import "XYPoint.h"
@interface XYPoint()
@property float X;
@property float Y;
@end


//XYPoint *xyPoint = [[XYPoint alloc]init];

@implementation XYPoint
//float X =12;
//float Y=23;
-(id)initWithX:(float)X initWithY:(float)Y{
    self = [super init];
    if(self){
        self.X = X;
        self.Y = Y;
    }
    return self;
}
//    self.initWithX =X;
//    self.initWithX =Y;
//}
-(float) getX{
    return self.X;
}
-(float) getY{
    return self.Y;
}
@end

