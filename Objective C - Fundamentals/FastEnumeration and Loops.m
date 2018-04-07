//
//  FastEnumeration and Loops.m
//  Objective C - Fundamentals
//
//  Created by Vuk Knežević on 4/7/18.
//  Copyright © 2018 Vuk Knežević. All rights reserved.
//

#import "FastEnumeration and Loops.h"

@implementation FastEnumeration_and_Loops

-(void) viewDidLoad {
    [super viewDidLoad];
    
    //Fast enumeration
    NSArray *arr = [NSArray arrayWithObjects: @"Vuk", @"Mira", @"More", @"Planina", nil];
    for (NSString *str in arr) {
        NSLog(@"%@",str);
    }
    
    NSDictionary *dict = [NSDictionary dictionaryWithObjectsAndKeys:@"A B",@"C",@"D E", nil];
    for (NSString *key in dict) {
        NSLog(@"Key: %@, Object: %@", key, [dict objectForKey:key]);
    }
}

+(void) runEnums {
    // Enums
    
    // C varijanta
    typedef enum {
        Monday,
        Tuesday,
        Wednesday,
        Thursday,
        Friday,
    } Weekdays;
    
    // Objective C varijanta
    typedef NS_ENUM(NSInteger, Weekday) {
        WeekdayMonday, //0
        WeekdayTuesday, //1
        WeekdayWednesday, //2
        WeekdayThursday, //3
        WeekdayFriday //4
    };
    
    Weekday today = WeekdayTuesday;
    switch (today) {
        case WeekdayMonday:
        case WeekdayTuesday:
        case WeekdayFriday:
            NSLog(@"posao");
            break;
        case WeekdayWednesday:
            NSLog(@"sastanci");
            break;
        default:
            NSLog(@"teren");
            break;
    }
    
    // Rawvalues
    NSLog(@"Rawvalue of today = %ld", (long)today); // ovde je uradjen i downcasting (long)today
}

@end
