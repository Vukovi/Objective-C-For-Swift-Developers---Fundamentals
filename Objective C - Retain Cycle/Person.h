//
//  Person.h
//  Objective C - Retain Cycle
//
//  Created by Vuk Knežević on 4/8/18.
//  Copyright © 2018 Vuk Knežević. All rights reserved.
//

#import <UIKit/UIKit.h>
//#import "Breifcase.h"
@class Breifcase; // svejedno je kako cu importovati moje klase, zakomnetarisana ili ova varijanta

@interface Person : NSObject
@property (nonatomic, strong) Breifcase *myBreifcase;
-(void)initData;
@end
