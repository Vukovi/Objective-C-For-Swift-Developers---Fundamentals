//
//  Person.m
//  Initializers
//
//  Created by Vuk Knežević on 4/8/18.
//  Copyright © 2018 Vuk Knežević. All rights reserved.
//

#import "Person.h"

@implementation Person

-(id)initWithFirstName: (NSString*)first lastName:(NSString*)last {
    self.firstName = first;
    self.lastName = last;
//    self = [super init]; umesto ovoga da pozovemo f-ju dole
//    return self;
    return [self initWithAge:35];
}


-(id)initWithAge: (NSInteger)age {
    self = [super init];
    return self;
}

@end
