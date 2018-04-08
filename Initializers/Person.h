//
//  Person.h
//  Initializers
//
//  Created by Vuk Knežević on 4/8/18.
//  Copyright © 2018 Vuk Knežević. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
-(id)initWithFirstName: (NSString*)first lastName:(NSString*)last;
@property (nonatomic, strong) NSString *firstName;
@property (nonatomic, strong) NSString *lastName;

@end
