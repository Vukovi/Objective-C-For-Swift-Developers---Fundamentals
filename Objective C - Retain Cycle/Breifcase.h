//
//  Breifcase.h
//  Objective C - Retain Cycle
//
//  Created by Vuk Knežević on 4/8/18.
//  Copyright © 2018 Vuk Knežević. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Person;

@interface Breifcase : NSObject
@property (nonatomic, weak) Person *owner;
@end
