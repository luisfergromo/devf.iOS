//
//  ViewController.m
//  HelloWorld
//
//  Created by Luis Romo on 22/09/17.
//  Copyright © 2017 devf. All rights reserved.
//

#import "ViewController.h"
#import "XYPoint.h"
#import "XYZPerson.h"
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

    [NSString stringWithFormat:@"%c", self.nameTextfield.text.getFirstRepeatedChar ];

    //
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
