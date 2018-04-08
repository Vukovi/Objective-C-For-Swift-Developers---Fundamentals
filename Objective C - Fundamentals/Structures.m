//
//  Structures.m
//  Objective C - Fundamentals
//
//  Created by Vuk Knežević on 4/8/18.
//  Copyright © 2018 Vuk Knežević. All rights reserved.
//

#import "Structures.h"


struct MyPoint {
    float x;
    float y;
};

// sa ovim ne mora da se u kod non stop poziva struct
typedef struct{
    float x;
    float y;
} Tacka;

struct MyLine {
    struct MyPoint startPoint; // ovo je kao instanca strukture MyPoint, a posto je value type nema pointera
    struct MyPoint endPoint; // ovo je kao instanca strukture MyPoint, a posto je value type nema pointera
};

@implementation Structures

-(void) runStructures {
    struct MyPoint pointA;
    pointA.x = 10.1;
    pointA.y = 12.5;
    
    struct MyPoint pointB;
    pointB.x = 20.6;
    pointB.y = 30.56;
    
    struct MyLine line;
    line.startPoint = pointA;
    line.endPoint = pointB;
    
    Tacka tackaC;
    tackaC.x = 45.67;
    tackaC.y = 56.34;
    
    
    int y = 7;
    int *z = &y; // pointer (*) je adresa (&) na drugi objekat
    // y = 0007
    // z = 0x04984135a955 a to je memorijska lokacija y, tj adresa ka y
    // z = z + 1 // pomera pointer za jedno mesto u memorijskoj lokaciji
    
}


@end





















