//
//  ViewController.m
//  Foundation Framework
//
//  Created by Vuk Knežević on 4/11/18.
//  Copyright © 2018 Vuk Knežević. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSString *nekiString = @"Vuk";
    NSString *nekiDrugiString = @"Vuk Knezevic";

//    assert([nekiString == @"Vuk"]); // ovo nece da bude jednako jer se porede memorijske lokacije koje su razicite
      assert([nekiString isEqualToString:@"Vuk"]); // ovo ce da bude jednako jer se porede vrednsoti
    
    // NSString je za razliku od Stringa, klasa, a ne struktura
    
    // NSNull je niz u koji moze da se ubaci nil
    
}


@end
