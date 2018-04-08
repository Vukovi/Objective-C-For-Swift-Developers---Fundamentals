//
//  Preporocessors.m
//  Objective C - Fundamentals
//
//  Created by Vuk Knežević on 4/8/18.
//  Copyright © 2018 Vuk Knežević. All rights reserved.
//

#ifndef NekiModul // ako je ovo definisano onda nista ispod ne radi
#define NekiModul // ako iznad nije definisano definisi i uradi sve sto je zapisano do #endif
// koristi ovde
#endif
#import "Preporocessors.h" // preprocessor takodje
#define NekiInteger 10 // preprocessor macro - sluzi za definisanje globalnih konstanti

//#pragma
//#warning
//#error
//#include

@implementation Preporocessors

int main(int argc, const char *argv[]) {
    int broj = NekiInteger;
}

@end
