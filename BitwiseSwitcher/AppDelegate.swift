//
//  AppDelegate.swift
//  BitwiseSwitcher
//
//  Created by Pilipenko Dima on 11/3/15.
//  Copyright © 2015 dimpiax. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        var bitwiseSwitcher = BitwiseSwitcher<Int8>(value: 14)
        print(bitwiseSwitcher) // BitwiseSwitcher<Int8>(decimal=15 ~> "0001110")

        bitwiseSwitcher.insert(0)
        print(bitwiseSwitcher) // BitwiseSwitcher<Int8>(decimal=15 ~> "0001111")
        
        bitwiseSwitcher.remove(1)
        print(bitwiseSwitcher) // BitwiseSwitcher<Int8>(decimal=13 ~> "0001101")
        
        bitwiseSwitcher.operate(1)
        bitwiseSwitcher.operate(2)
        bitwiseSwitcher.operate(~3)
        print(bitwiseSwitcher) // BitwiseSwitcher<Int8>(decimal=7 ~> "0000111")
        
        print(bitwiseSwitcher.decimal) // 7
        
        bitwiseSwitcher.remove(1)
        print(bitwiseSwitcher.consistValues) // [0, 2]
        
        return true
    }
}