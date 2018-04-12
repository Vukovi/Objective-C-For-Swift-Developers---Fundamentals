//
//  ViewController.m
//  Objective C - Memory Management
//
//  Created by Vuk Knežević on 4/9/18.
//  Copyright © 2018 Vuk Knežević. All rights reserved.
//

#import "ViewController.h"
#import "AutoreleaseObject.h"

// Objekat moze imati retain count ako se kreira pomocu:
// new, alloc, copy, retain
// kada objekat ima retain count veci od 1 mi smo odgovorni da ga otpustimo iz memorije pomocu RELEASE


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSString *foo = [NSString new]; // njegov retain count je sada 1
    NSString *bar = [[NSString alloc]initWithString:@"Bar"]; // njegov retain count je sada 1
    //NSString *baz = [foo retain]; sada postoje 2 refernece ka foo i toznaci da je njegov  retain count 2
    NSString *baz = [foo copy]; // dodaj se +1 na ratain count
    
    //zbog arc je ovo bilo greska ali ovako bih morao da ih otpustim
//    [foo release];
//    [bar release];
//    [baz release];

    NSString *foc = @"Foo"; // ova ce zbog autorelease biti sama pustena iz memeorije

}

-(AutoreleaseObject*)getObject {
    AutoreleaseObject *autoObject = [[AutoreleaseObject alloc]init]; //ovde imam objekat sa +1 retain count-om unutar ove metode
//    return [autoObject autorelease]; ARC zabranjuje koriscenje autorelease
    return autoObject;
}

-(void)someMethod{
//    AutoreleaseObject *autoObject = [[[AutoreleaseObject alloc]init]autorelease];
    AutoreleaseObject *autoObject = [[AutoreleaseObject alloc]init];
    [autoObject doSomething];
//    [autoObject release]; da npr nismo pisali prvu liniju koda, vec da krece od druge linije, i da smo iskljucili ARC, morali bi da otpustimo ovaj objekat
}

-(void)inflateMemoruUsage {
    for (NSUInteger n = 0; n < 100000; ++n){
        @autoreleasepool{
            //this object is autorelease
            NSData *data = [self getObject];
            // do something with data
        }
    }
    // svih 100000 data objekata su i dalje zivi na ovom mestu bez @autoreleasepool
}




@end


