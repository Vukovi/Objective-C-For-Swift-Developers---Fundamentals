//
//  ViewController.h
//  Objective C - Retain Cycle
//
//  Created by Vuk Knežević on 4/8/18.
//  Copyright © 2018 Vuk Knežević. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

// (nonatomic, strong) ovo se zove property atributes

// u 99% slucajeva koristi NONATOMIC jer je mnogo brza od ATOMIC
// ATOMIC bi koristio u slucaju veoma potrebnog thread safety

// STRONG ili WEAK, jaka ili slaba referenca ka objektu
// ako je STRONG, ta instanca nikad ne moze da buge nil, osim ako je ne ugasimo
// kada se korisiti STRONG zadrzava se (retain-uje se) instanca u memoriji
// a kod ne-objektnih tipova se samo dodeljuje vrenost ASSIGN zato i nema pointera na memorijsku lokaciju
@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) int age;

@end

