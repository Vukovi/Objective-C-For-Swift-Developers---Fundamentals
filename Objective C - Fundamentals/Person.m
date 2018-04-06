//
//  Person.m
//  Objective C - Fundamentals
//
//  Created by Vuk Knežević on 4/6/18.
//  Copyright © 2018 Vuk Knežević. All rights reserved.
//

#import "Person.h"

@implementation Person

// ova funkcija se autoamtski generise i to je SETTER
-(void)setRadniStaz:(long)radniStaz{
    if (radniStaz > _radniStaz) {
        _radniStaz = radniStaz;
    }
}

// ova funkcija ima pointer unutar type returna i nju sam pozvao kao automatski GETTER
-(NSString*)zanimanje {
    if ([_zanimanje isEqualToString:@"iOS Developer"]) {
        return _zanimanje;
    } else {
        return @"Ne menjaj zanmanje";
    }
}

@end
