//
//  ViewController.m
//  ZajednoSwift&ObjC
//
//  Created by Vuk Knežević on 4/8/18.
//  Copyright © 2018 Vuk Knežević. All rights reserved.
//

#import "ViewController.h"
#import "ZajednoSwift_ObjC-Swift.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.objectiveC = @"";
    SwiftViewController *swiftM = [[SwiftViewController alloc]init];
    self.swiftH = [[SwiftViewController alloc]init];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
