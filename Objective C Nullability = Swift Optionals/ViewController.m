//
//  ViewController.m
//  Objective C Nullability = Swift Optionals
//
//  Created by Vuk Knežević on 4/8/18.
//  Copyright © 2018 Vuk Knežević. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(int)sum:(NSNumber*)numA numberB:(NSNumber*)numB {
    int theSum = numA.intValue + numB.intValue;
    return theSum;
}

// ovo ne garantuje da nece primiti nil, jer kod NSNumbera se dogadja da on u svojoj klasi pretvara ovo u nule
-(int)summing:(nonnull NSNumber*)numA numberB:(nonnull NSNumber*)numB {
    int theSum = numA.intValue + numB.intValue;
    return theSum;
}

// isto sto i nonnull svejedno je
-(int)theSumming: (NSNumber* _Nonnull)numA numberB:(NSNumber* _Nonnull)numB {
    int theSum = numA.intValue + numB.intValue;
    return theSum;
}

-(void)getName:(NSString* _Nonnull)name {}
-(void)getNameOptional:(NSString* _Nullable)name {}



- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSNumber *num1;
    NSNumber *num2;
    
    // varijanta 1
    if (num1 && num2) {
        int sum = [self sum:num1 numberB:num2];
        NSLog(@"%d",sum);
    } else {
        NSLog(@"these are null!");
    }
    // varijanta 2 koja opet ne garantuje da nece moci da se unese nil
    int sum = [self summing:num1 numberB:num2];
    int sum2 = [self theSumming:num1 numberB:num2];
    [self getName:nil]; // dozvoljava unos nila iako je receno da se radi sa ne nilovima
    [self getNameOptional:nil]; // ovo je swiftov opcional
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
