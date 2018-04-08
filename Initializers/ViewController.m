//
//  ViewController.m
//  Initializers
//
//  Created by Vuk Knežević on 4/8/18.
//  Copyright © 2018 Vuk Knežević. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    Person *person1 = [[Person alloc]init];
    Person *person2 = [Person new]; // ovaj mozes da zaboravis jer dozvoljava samo native inite
    Person *person3 = [[Person alloc]initWithFirstName:@"Vuk" lastName:@"Knezevic"];
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
