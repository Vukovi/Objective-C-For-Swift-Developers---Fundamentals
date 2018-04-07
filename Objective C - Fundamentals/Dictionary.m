//
//  Dictionary.m
//  Objective C - Fundamentals
//
//  Created by Vuk Knežević on 4/7/18.
//  Copyright © 2018 Vuk Knežević. All rights reserved.
//

#import "Dictionary.h"

@implementation Dictionary

-(void) viewDidLoad {
    [super viewDidLoad];
    
    NSNumber *age = [NSNumber numberWithInt:35];
    NSDictionary *literalDict = @{@"A":@"1", @"age":age};
    
    int valueDictionaryja = [[literalDict objectForKey:@"age"] intValue];
    // ne mozes modifikovati dictionary, mozes samo mutable dictionary
    
    NSMutableDictionary *literalMutDict = [@{@"1":@"BMW", @"2":@"Honda"} mutableCopy];
    NSMutableDictionary *mutPravilno = [[NSMutableDictionary alloc] init];
    [mutPravilno setObject:@"A1" forKey:@"Google"];
    [mutPravilno setObject:@"B2" forKey:@"Apple"];
    
}
@end
