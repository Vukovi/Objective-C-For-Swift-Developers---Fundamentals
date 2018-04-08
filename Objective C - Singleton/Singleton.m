//
//  Singleton.m
//  Objective C - Singleton
//
//  Created by Vuk Knežević on 4/8/18.
//  Copyright © 2018 Vuk Knežević. All rights reserved.
//

#import "Singleton.h"

@implementation Singleton

+(id)instance {
    static Singleton *shared = nil;
    @synchronized(self){
        if (shared == nil) {
            shared = [[Singleton alloc]init];
        }
    }
    return shared;
}

@end
