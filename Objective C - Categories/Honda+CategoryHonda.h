//
//  Honda+CategoryHonda.h
//  Objective C - Categories
//
//  Created by Vuk Knežević on 4/8/18.
//  Copyright © 2018 Vuk Knežević. All rights reserved.
//

#import "Honda.h"

@interface Honda (CategoryHonda)

-(void)addSpoiler;
-(void)addRims;
-(void)newPaint;
-(void)addMusic;
@property (nonatomic, strong) NSNumber *factor;

@end
