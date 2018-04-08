//
//  Kompanija.m
//  Objective C - Retain Cycle
//
//  Created by Vuk Knežević on 4/8/18.
//  Copyright © 2018 Vuk Knežević. All rights reserved.
//

#import "Kompanija.h"
#import "Person.h"

@implementation Kompanija

-(void)initData {
    self.employee = [[Person alloc]init];
    [self.employee initData];
    
    // kompanija hoce da otpusti zaposlenog
    self.employee = nil; // ne moze jer je jos u memoriji jer Briefcase ima referencu na zaposlenog
}

@end
