//
//  ViewController.h
//  Objective C - Fundamentals
//
//  Created by Vuk Knežević on 4/6/18.
//  Copyright © 2018 Vuk Knežević. All rights reserved.
//

// Skalarni tipovi: void(8 bita), char(8 bita), BOOL(8 bita), short(16 bita), int(32 bita), flaot(32 bita), double(64 bita), long(32 ili 64 bita), unsigned short(16 bita), unsigned int(32 bita), unsigned long(64 bita), unsigned char(8 bita), NSInteger(32 ili 64 bita), NSUInteger(32 ili 64 bita, Unsigned integer)
// Unsigned su pozitivni brojevi, a ovi koji nemaju taj prefiks su i pozitivni i negativni

// sve promenljive po defaultu su - auto
// ako nam trebaju konstatne onda se poziva - const
// jedinstvene ili type promenljive su - static
// promenljiva koja ce biti definisana na drugom mestu - extern
// promanljiva kojoj ce biti bolje da je sacuvana u CPU regitriju - register (npr type loop za brzi pristup)
// __strong - napravi strong reference
// __weak - napravi weak referencu
// __block - promanljiva koja zbog ovoga moze da se menje u nekom bloku
// __unsafe__unretained - non/zeroing weak reference


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

@property (nonatomic) BOOL isItDone; // ne moze strong jer je strong vezano za objekte, a BOOL je value type

@end



