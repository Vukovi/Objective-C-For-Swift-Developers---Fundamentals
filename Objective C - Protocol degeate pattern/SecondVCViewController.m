//
//  SecondVCViewController.m
//  Objective C - Protocol degeate pattern
//
//  Created by Vuk Knežević on 4/9/18.
//  Copyright © 2018 Vuk Knežević. All rights reserved.
//

#import "SecondVCViewController.h"
#import "ViewController.h"

@interface SecondVCViewController ()

@end

@implementation SecondVCViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}


- (IBAction)btnAction:(UIButton *)sender {
    ViewController *vc = [[ViewController alloc]init];
    [_delegate changeColorMethod:[UIColor purpleColor]];
    [self presentViewController:vc animated:YES completion:nil];
}
@end
