//
//  SecondVCViewController.h
//  Objective C - Protocol degeate pattern
//
//  Created by Vuk Knežević on 4/9/18.
//  Copyright © 2018 Vuk Knežević. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ViewController; // ovo zovem iznad protokola jer u protokolu imam jedan parametar koji je tipa ove klase

@protocol ChangeColorDelegate <NSObject>
-(void)changeColorMethod: (UIColor*)newColor;
-(void)addLabelToViewController: (ViewController*)controller;
@end

@interface SecondVCViewController : UIViewController
@property (nonatomic, weak) id <ChangeColorDelegate> delegate;
@property (weak, nonatomic) IBOutlet UIButton *btn;
- (IBAction)btnAction:(UIButton *)sender;

@end
