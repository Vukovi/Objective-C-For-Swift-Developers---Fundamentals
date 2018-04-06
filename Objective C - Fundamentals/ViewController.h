//
//  ViewController.h
//  Objective C - Fundamentals
//
//  Created by Vuk Knežević on 4/6/18.
//  Copyright © 2018 Vuk Knežević. All rights reserved.
//

#import <UIKit/UIKit.h>

// @interface je isto sto i class u swiftu
@interface ViewController : UIViewController {
    
    // sve ovde je PRIVATE i vidi se samo u okviru ove klase, nije dostupno drugim klasama
    NSString *ime;
    
    int broj1;
    int broj2;
    
    double double1;
    double double2;
    
    BOOL bool1;
    BOOL bool2;
    
}

// ovde su property-ji i metode koji su globalno dostupni i zovu se instance properties, i kreira im s getter i setter automatski
// outleti
@property (weak, nonatomic) IBOutlet UILabel *lbl;
@property (weak, nonatomic) IBOutlet UISwitch *mySwitch;
// kao i obicni property-ji
@property (nonatomic, strong) NSString *test;

- (IBAction)globalAlert:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *globalAlertBtn;


@end

