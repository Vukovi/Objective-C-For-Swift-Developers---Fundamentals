//
//  Person.m
//  Objective C - Retain Cycle
//
//  Created by Vuk Knežević on 4/8/18.
//  Copyright © 2018 Vuk Knežević. All rights reserved.
//

#import "Person.h"
#import "Breifcase.h"

@implementation Person

-(void) initData {
    self.myBreifcase = [[Breifcase alloc] init];
    self.myBreifcase.owner = self; // ovo je retain cycle i tu je memory leak, a resenje je da se jedna od referenci napravi da bude weak
}

@end
