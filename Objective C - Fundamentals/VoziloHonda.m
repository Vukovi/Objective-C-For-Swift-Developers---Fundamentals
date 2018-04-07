//
//  VoziloHonda.m
//  Objective C - Fundamentals
//
//  Created by Vuk Knežević on 4/7/18.
//  Copyright © 2018 Vuk Knežević. All rights reserved.
//

#import "VoziloHonda.h"

@implementation VoziloHonda

-(id)init {
    if (self = [super init]) {
        //postavi nesto sto sto ti odgovara u ovom slucaju
        // U Obj C nema zastite propertyja kao u swifu, ima simulacije toga
    }
    [self drive];
    return self;
}

-(void) test {
    self.napravi = @"Honda";
    self.model = @"Accord";
    [self drive];
}

-(void)drive {
    NSLog(@"Vozim u subklasi");
    [super drive];
}

@end
