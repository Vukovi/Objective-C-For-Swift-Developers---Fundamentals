//
//  ViewController.m
//  Objective C - Categories
//
//  Created by Vuk Knežević on 4/8/18.
//  Copyright © 2018 Vuk Knežević. All rights reserved.
//

#import "ViewController.h"
#import "Honda.h"
#import "Honda+CategoryHonda.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    Honda *honda = [[Honda alloc]init];
    // posto sam importovao kategoriju koja je isto sto i extenzija u Swiftu, a isto je sto i extenzija u objC samo se moze primeniti i na native ios klase za razliku od objC extenzije koja moze prosiriti samo moje klase, postaju mi dostupne metode i propertiji iz kategorije
    [honda addRims];
    [honda addMusic];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
