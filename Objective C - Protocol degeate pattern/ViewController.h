//
//  ViewController.h
//  Objective C - Protocol degeate pattern
//
//  Created by Vuk Knežević on 4/9/18.
//  Copyright © 2018 Vuk Knežević. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondVCViewController.h"

@interface ViewController : UIViewController <ChangeColorDelegate>
@property (weak, nonatomic) IBOutlet UIButton *btn;
- (IBAction)btnAction:(UIButton *)sender;


@end

