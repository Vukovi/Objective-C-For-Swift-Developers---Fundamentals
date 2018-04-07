//
//  MethodsPerson.m
//  Objective C - Fundamentals
//
//  Created by Vuk Knežević on 4/7/18.
//  Copyright © 2018 Vuk Knežević. All rights reserved.
//

#import "MethodsPerson.h"

@implementation MethodsPerson

// klasna funkcija (normalna)
-(void) personName{
    NSLog(@"ja sam funkcija koja se dobija preko instance");
}

// type funkcija ili staticka funkcija
+(void) origin{
    NSLog(@"Ja sam funkcija koja se samo jednom instancira u memoriji");
}

@end
