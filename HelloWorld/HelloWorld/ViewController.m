//
//  ViewController.m
//  HelloWorld
//
//  Created by Luis Romo on 22/09/17.
//  Copyright © 2017 devf. All rights reserved.
//

#import "ViewController.h"
#import "XYPoint.h"
#import "NSString+DevF.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *greetingsLabel;
@property (weak, nonatomic) IBOutlet UITextField *nameTextfield;
@property (weak, nonatomic) IBOutlet UIButton *greetingsButton;
@property(nonatomic,strong)XYPoint *xypoint;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //Asignar los valores a getX y getY mediante el método -(id)initWithX:(float)X initWithY:(float)Y
    self.xypoint = [[XYPoint alloc] initWithX:12.4 initWithY:4.5];
        //Imprimir los valores de getX y getY
    NSLog(@"%@",[[NSString alloc]initWithFormat:@"X: %.2f ,Y: %.2f",self.xypoint.getX, self.xypoint.getY]);
//
    NSLog(@"%@",[NSString stringWithFormat:@"Int addition result: %d", [self addInt:12 withInt:23]] );
//
    NSLog(@"%@",[NSString stringWithFormat:@"Float addition result: %.1f", [self addFloat:1.4 withFloat:5.6]]);
}

//-(IBAction)onGretingsTapped:(id)sender{
//    self.greetingsLabel.text = self.nameTextfield.text;
////** imprimir el valor que no es repetido **
////    [NSString stringWithFormat:@"%c", self.nameTextfield.text.getFirstRepeatedChar ];
//self.nameTextfield.text = self.nameTextfield.text.reverseString;
//}
-(int) addInt:(int)num1 withInt:(int)num2{
    return  num1 + num2;
}
-(float) addFloat:(float)num1 withFloat:(float)num2{
    return num1 + num2;
}
-(void) createGreetingsWithName:(NSString*) name stringPrefix:(NSString*) prefix{
    NSString* (^stringWithFormat)(NSString*,NSString*)=^NSString* (NSString* prefix ,NSString* name){
        NSLog(@"%@",[NSString stringWithFormat:@"%@",[self  name:@"José" stringPrefix:@"Hola, "]]);
//        stringWithFormat(prefix,name);
            //        NSLog(@"%@",[[NSString] name:@"%@"]);

    };
//    (NSString*)(@"%@",[NSString stringWithFormat:@"%@",[self createGreetingsWithName:@"Adrian" stringPrefix:@"Hola, "]]);
//bloque:(NSString*(^)(NSString));
}/*
 - (void)didReceiveMemoryWarning {
   [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
*/



@end
