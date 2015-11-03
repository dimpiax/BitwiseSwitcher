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
        var bitwiseSwitcher = BitwiseSwitcher<Int16>(value: 14)

        bitwiseSwitcher.insert(0)
        print(bitwiseSwitcher) // BitwiseSwitcher<Int16>(decimal=15 ~> "1111")
        
        bitwiseSwitcher.remove(1)
        bitwiseSwitcher.remove(2)
        print(bitwiseSwitcher) // BitwiseSwitcher<Int16>(decimal=9 ~> "1001")
        
        bitwiseSwitcher.operate(1)
        bitwiseSwitcher.operate(2)
        bitwiseSwitcher.operate(~3)
        print(bitwiseSwitcher) // BitwiseSwitcher<Int16>(decimal=7 ~> "111")
        
        print(bitwiseSwitcher.decimal) // 7
        		
        return true
    }
}