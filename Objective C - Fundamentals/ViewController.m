//
//  ViewController.m
//  Objective C - Fundamentals
//
//  Created by Vuk Knežević on 4/6/18.
//  Copyright © 2018 Vuk Knežević. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"

@interface ViewController ()

// sve sto je ovde nece biti vidljivo u drugim klasama, kao i u @implementation delu klase
@property (nonatomic, strong) NSString *naziv;

@end
// deo koda do IMPORT sluzbene reci moze da se izbrise


@implementation ViewController
// u implementirajucem delu ne mogu se deklarisati property-ji, samo metode, ali one nece biti vidljive drugim klasama osim ako nisu u header delu klase

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // String promanljiva i konstanta - LOKALNA
    NSString *rec = @"neka rec"; // Ovo je variabla
    NSString *const konstantnaRec = @"konstantna"; // Ovo je konstanta
    rec = @"promena";
    rec = konstantnaRec;
    
    // Integer promeljiva i konstanta - LOKALNA
    int broj = 10;
    const int konstanta = 15;
    double decimala = 11.23467234;
    float malaDecimala = 2.34;
    broj = konstanta;
    NSLog(@"%f %f",decimala,malaDecimala);
    
    // Array i MutableArray - LOKALNA
    NSArray *array = @[@"Apple", @"Banana", @"Orange"];
            // [array addObject:@"Melon"]; NE MOZE DA SE DODA NOVI ELEMENT !!!!!
            // NSArray *brojevi = @[broj, decimala, malaDecimala]; ne moze da se pravi niz od C-ovskih tipova !!!!!!
    NSNumber *num1 = [NSNumber numberWithInt:5];
    NSNumber *num2 = [NSNumber numberWithDouble:5.1];
    NSArray *brojevi = @[num1,num2];
    
    NSMutableArray *array2 = [[NSMutableArray alloc] initWithObjects:@"Apple", @"Banana", @"Orange", nil];
    [array2 addObject:@"Melon"];
    [array2 insertObject:@"Strawberry" atIndex:3];
    [array2 removeObjectAtIndex:3];
    
    // Rad sa NSNumberom
    int val1 = num1.doubleValue; // ovo je C-ovska frma
    int val2 = num2.doubleValue;
    int val3 = val1 + val2;
    NSNumber *sum = [NSNumber numberWithInt:val3];
    NSNumber *rezultat = [NSNumber numberWithDouble:num1.doubleValue * num2.doubleValue];
    
    // Koriscenje promenljivih iz interfejsa
    ime = @"Vuk";
    broj1 = broj;
    broj2 = 100;
    double1 = 100.343;
    double2 = 213.324;
    bool1 = YES;
    bool2 = true; // isto sto i YES
    
    // sa SELF i sa _ mozemo pristupiti samo promenljivima koje su u hederu van bloka kontrolera i koje su u implementirajucem fajlu unutar interfejsa
    self.naziv = @"naziv neki";
    self.lbl.textAlignment = UITextAlignmentCenter;
    [self setTest:@"Testiranje"];
    _naziv = @"neki naziv";
    _test = @"Testiranje...";
    
    
    // Napravio promenljivu rezultat i score
    int rezultat2 = broj1 + broj2;
    double score = double1 + double2;
    
    // Malo implementacije u UI
    self.lbl.text = [NSString stringWithFormat:@"%@  %d  %.1f  %lu  %lu  %lu",ime,rezultat,score,array2.count,(unsigned long)array.count,(unsigned long)brojevi.count];
    NSLog(@"%@", [NSString stringWithFormat:@"%@  %@  %.1f  %lu  %@",ime,rezultat,score,array2.count,array]); // Vuk  115  313.7  4     %.1f  zaokruzuje na jednu decimalu
    self.mySwitch.on = bool1;
    self.globalAlertBtn.enabled = bool2;
    
    // IF/ELSE/ELSE IF
    if (bool1) {
        NSLog(@"%d", konstanta);
    } else if ([ime isEqualToString:@"Vuk"]) {
        NSLog(@"%@", ime);
    } else if (broj < 100){
        NSLog(@"%d", broj);
    } else {
        NSLog(@"Stampaj ovo kao default");
    }
    
    // FOR petlja
    int number = 10;
    for (number = 20; number > 0; number -= 1) {
        NSLog(@"%i", number); // 20 19 18 ... 1
    }
}

- (IBAction)globalAlert:(id)sender {
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"ALERT!!!" message:@"Ovo je alert" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"Odustani" style:UIAlertActionStyleCancel handler:nil];
    [alert addAction:cancelAction];
    [self presentViewController:alert animated:YES completion:nil];
}


- (void)koriscenjePersonKlase {
    
    Person *vuk = [[Person alloc] init];
    vuk.firstName = @"Vuk";
    vuk.lastName = @"Knezevic";
    
    vuk.radniStaz = -100; // printa 0, jer setter ne dozvoljava negativne vrednosti
    vuk.zanimanje = @"iOS"; // printa "Ne menjaj zanmanje" jer getter dozvoljava samo unos "iOS Developer"
    
    
}

@end
