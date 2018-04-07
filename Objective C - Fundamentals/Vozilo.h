//
//  Vozilo.h
//  Objective C - Fundamentals
//
//  Created by Vuk Knežević on 4/7/18.
//  Copyright © 2018 Vuk Knežević. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Vozilo : NSObject
@property (nonatomic, strong) NSString *napravi;
@property (nonatomic, strong) NSString *model;
@property (nonatomic, strong) NSString *kubikazaMotora;
-(void)drive;
@end

