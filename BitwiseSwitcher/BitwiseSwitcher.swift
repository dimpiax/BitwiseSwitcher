//
//  BitwiseSwitcher.swift
//  BitwiseSwitcher
//
//  Created by Pilipenko Dima on 11/3/15.
//  Copyright © 2015 dimpiax. All rights reserved.
//

import Foundation

struct BitwiseSwitcher<T: IntegerType>: CustomStringConvertible {
    private(set) var decimal: T!
    
    init() {
        decimal = 0
    }
    
    init(value: T) {
        decimal = value
    }
    
    mutating func operate(value: T) {
        if value < 0 {
            remove(~value)
        }
        else {
            insert(value)
        }
    }
    
    mutating func insert(value: T) {
        guard value >= 0 else { return }
        
        decimal = define(rib(value))
    }
    
    mutating func remove(value: T) {
        guard value >= 0 else { return }
        
        decimal = define(~rib(value))
    }
    
    private func define(value: T) -> T {
        if value < 0 { return decimal & value }
        return decimal | value
    }
    
    private func rib(value: T) -> T {
        switch value {
            case let x as Int8: if let x = 1 << x as? T { return x }
            case let x as Int16: if let x = 1 << x as? T { return x }
            case let x as Int32: if let x = 1 << x as? T { return x }
            case let x as Int64: if let x = 1 << x as? T { return x }
                
            case let x as UInt8: if let x = 1 << x as? T { return x }
            case let x as UInt16: if let x = 1 << x as? T { return x }
            case let x as UInt32: if let x = 1 << x as? T { return x }
            case let x as UInt64: if let x = 1 << x as? T { return x }
                
            default: break
        }
        return 0
    }
    
    var description: String {
        let binary = String(Int("\(decimal)") ?? 0, radix: 2)
        return "\(BitwiseSwitcher.self)(decimal=\(decimal) ~> \"\(binary)\")"
    }
}