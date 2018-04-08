//
//  SwiftViewController.swift
//  ZajednoSwift&ObjC
//
//  Created by Vuk Knežević on 4/8/18.
//  Copyright © 2018 Vuk Knežević. All rights reserved.
//

import Foundation
import UIKit

// Da bih koristio ObjC u Swiftu, moram da napravim Bridging-Header.h
// Ukoliko se ne napravi sam, mora manuelno:
// Add File/ Header file
// koji zatim mora da se nazove ovako: NAZIV_PROJEKTA-Bridging-Header.h
// zatim u Build Settingsu da se pod SWIFT COMPILER GENERAL u rubrici OBEJCTIVE-C BRIDGING HEADER upise
// putanja do bridge fajla i njegov naziv ovako:
// Bridging Header Objective C i Swift/Bridging Header Objective C i Swift-Bridging-Header.h
// Folder/Bridge fajl, ako smo ga smestili u podfolder onda FOLDER/PODFOLDER/Bridging-Header.h
// U Bridge fajlu treba importovati one hedere koje cemo koristiti u swiftu

class SwiftViewController: UIViewController {
    var test: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        test = "testing"
        let firstVC = ViewController()
        firstVC.objectiveC = "Ovo je objective C property"
    }
}
