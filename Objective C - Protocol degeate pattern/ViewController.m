//
//  ViewController.m
//  Objective C - Protocol degeate pattern
//
//  Created by Vuk Knežević on 4/9/18.
//  Copyright © 2018 Vuk Knežević. All rights reserved.
//

#import "ViewController.h"
#import "SecondVCViewController.h"

@interface ViewController ()
@property (nonatomic, strong) SecondVCViewController *secondVC;
@end

@implementation ViewController 

- (void)viewDidLoad {
    [super viewDidLoad];
    _secondVC = [[SecondVCViewController alloc]init];
    _secondVC.delegate = self;
}


- (IBAction)btnAction:(UIButton *)sender {
    
    [self presentViewController:_secondVC animated:YES completion:nil];
}


-(void)addLabelToViewController:(ViewController *)controller{
    //
}

-(void)changeColorMethod:(UIColor *)newColor {
    [self.view setBackgroundColor:newColor];
}

@end
