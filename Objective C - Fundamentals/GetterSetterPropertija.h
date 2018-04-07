//
//  GetterSetterPropertija.h
//  Objective C - Fundamentals
//
//  Created by Vuk Knežević on 4/6/18.
//  Copyright © 2018 Vuk Knežević. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GetterSetterPropertija : NSObject {
    BOOL zaposlen;
}

@property (nonatomic, strong) NSString *firstName;
@property (nonatomic, strong) NSString *lastName;
@property (nonatomic) long radniStaz; // ne moze strong jer je strong vezano za objekte, a long je value type
@property (nonatomic, strong) NSString *zanimanje;

@end
