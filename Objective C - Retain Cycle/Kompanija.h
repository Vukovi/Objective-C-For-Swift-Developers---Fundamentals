//
//  Kompanija.h
//  Objective C - Retain Cycle
//
//  Created by Vuk Knežević on 4/8/18.
//  Copyright © 2018 Vuk Knežević. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Person;
@interface Kompanija : NSObject
@property (nonatomic, strong) Person *employee;
@end
