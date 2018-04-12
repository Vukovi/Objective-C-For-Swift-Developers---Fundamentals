//
//  AutoreleaseObject.m
//  Objective C - Memory Management
//
//  Created by Vuk Knežević on 4/9/18.
//  Copyright © 2018 Vuk Knežević. All rights reserved.
//

#import "AutoreleaseObject.h"

@implementation AutoreleaseObject

-(id)initWithParam: (NSData*)param {
    if (self = [super init]) {
        _someData = [[NSData alloc]init];
        _params = [param copy];
    }
    return self;
}

-(void)doSomething {
    //
}

-(void) dealloc {
    // obe ove instance moraju biti dealocirane pre super dealloc
//    [_someData release];
//    [_params release];
    // ako koristimo ARC onda ne zovemo super dealloc
//    [super dealloc]; // ovaj uvek na kraju
}

@end
