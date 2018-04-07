//
//  Methods.m
//  Objective C - Fundamentals
//
//  Created by Vuk Knežević on 4/7/18.
//  Copyright © 2018 Vuk Knežević. All rights reserved.
//

#import "Methods.h"
#import "MethodsPerson.h"

@interface Methods()
@property (nonatomic) double bankAccount;
@property (nonatomic) double itemAmount;
@end

@implementation Methods

-(void) viewDidLoad {
    [super viewDidLoad];
    self.bankAccount = 500.50;
    self.itemAmount = 400.00;
}

-(void) playground {
    if ([self canPurchase: self.itemAmount]) {
        NSLog(@"Kupovina moze da se obavi!");
    }
    
//    [self decalreWinnerWithPlayerScore:<#(NSInteger)#> playerBScore:<#(NSInteger)#>]
//    [self decalareWinner:<#(NSInteger)#> :<#(NSInteger)#>]
    [self decalreWinnerWithPlayerScore:55 playerBScore:47];
    
    
    MethodsPerson *person = [[MethodsPerson alloc] init];
    [person personName]; // pozivanje normalne funkcije - kao i dosad
    [MethodsPerson origin]; // pozivanje staticke funkcije
    
    // Native staticke funkcije objC
    UIImage *image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:[NSString stringWithFormat:@"https://www.google.com"]]]];
    // ili razbijeno ali bzvz
    UIImage *img;
    NSString *urlString = @"https://www.google.com";
    NSURL *url = [NSURL URLWithString: urlString];
    NSData *data = [NSData dataWithContentsOfURL:url];
    image = [UIImage imageWithData:data];
}

-(BOOL) canPurchase:(double)amount {
    if (self.bankAccount >= amount)
        return YES;
    return NO;
}

-(void) decalreWinnerWithPlayerScore:(NSInteger)scoreA playerBScore:(NSInteger)scoreB {
    if (scoreA > scoreB) {
        NSLog(@"Player A Wins");
    } else if (scoreB > scoreA) {
        NSLog(@"Player A Wins");
    } else {
        NSLog(@"No winner");
    }
}

-(void) decalareWinner:(NSInteger)scoreA :(NSInteger)scoreB {
    NSLog(@"");
}

@end





























