//
//  ViewController.h
//  ZajednoSwift&ObjC
//
//  Created by Vuk Knežević on 4/8/18.
//  Copyright © 2018 Vuk Knežević. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SwiftViewController; //  ovo je opciono

@interface ViewController : UIViewController

@property (nonatomic,weak) SwiftViewController *swiftH;
@property (nonatomic,strong) NSString *objectiveC;

@end

