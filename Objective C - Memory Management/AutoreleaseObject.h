//
//  AutoreleaseObject.h
//  Objective C - Memory Management
//
//  Created by Vuk Knežević on 4/9/18.
//  Copyright © 2018 Vuk Knežević. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AutoreleaseObject : NSObject

-(void)doSomething;
@property (nonatomic,strong) NSData *someData;
@property (nonatomic,strong) NSData *params;

@end
