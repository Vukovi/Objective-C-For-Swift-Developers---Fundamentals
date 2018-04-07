//
//  Arrays.m
//  Objective C - Fundamentals
//
//  Created by Vuk Knežević on 4/7/18.
//  Copyright © 2018 Vuk Knežević. All rights reserved.
//

#import "Arrays.h"

@implementation Arrays

-(void)viewDidLoad{
    [super viewDidLoad];
    
    NSArray *arr = [[NSArray alloc]init];
    NSString *str = @"nesto";
//    arr[0] = str; ne moze da se prosiri sa novim elementom
//    zato cu kad upotrebljavam NSArray znati konacan broj elemenata koji treba da ubacim u njega
//    i uvek cu ga inicijalizovati sa odredjenim brojem podataka koji hocu da smestim u njega
    NSArray *betterArr = [NSArray arrayWithObjects:@"A", @"B", @"C", nil];
    NSArray *literalArr = @[@"A", @"B", @"C"];
//    betterArr[1] = @"b"; ne moze jer nije mutabilan
//    ali zato mozemo da ga pregazimo
    betterArr = @[@"D", @"E", @"F"];
    
    NSMutableArray *mutableArr = [NSMutableArray arrayWithObjects:@"A", @"B", @"C", nil];
    NSLog(@"Mut: %@", mutableArr.debugDescription);
    [mutableArr removeObjectAtIndex:2];
    NSLog(@"Mut2: %@", mutableArr.debugDescription);
    [mutableArr addObject:@"D"];
    
    // Kada bih dobijao neki response u nekoj metodi
    // koristio bih mutable array da bih skupio sve podatke u nekoj petlji
    // a zatim bih, kada je sve to gotovo, taj mutable array dodelio kao vrednost
    // jednom property-ju u klasi koji ce biti obican array
    
    NSArray *arr3 = [NSArray arrayWithArray:betterArr];
    
    NSArray *arr4 = mutableArr;
//    NSMutableArray *arr5 = arr3 // IAKO MOZE ARRAY DA SE NAPRAVI OD MUTABLE ARRAYA, OBRNUTO NE MOZE
}

@end
