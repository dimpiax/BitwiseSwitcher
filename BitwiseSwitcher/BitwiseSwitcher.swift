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
    
    var consistValues: [Int] {
        let binary = String(Int("\(decimal)") ?? 0, radix: 2)
        let binaryArray = Array(binary.characters).flatMap{ Int("\($0)") }.reverse()
        
        var resultArray: [Int] = []
        for (index, value) in binaryArray.enumerate() where value == 1 {
            resultArray.append(index)
        }
        
        return resultArray
    }
    
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
            case let x as Int: if let x = 1 << x as? T { return x }
                
            case let x as UInt8: if let x = 1 << x as? T { return x }
            case let x as UInt16: if let x = 1 << x as? T { return x }
            case let x as UInt32: if let x = 1 << x as? T { return x }
            case let x as UInt64: if let x = 1 << x as? T { return x }
            case let x as UInt: if let x = 1 << x as? T { return x }
                
            default: break
        }
        return 0
    }
    
    var description: String {
        var binary = String(Int("\(decimal)") ?? 0, radix: 2)
        let count = (8*sizeof(T)-1)-binary.characters.count
        if count > 0 {
            let arr = Array<String>(count: count, repeatedValue: "0")
            binary = arr.joinWithSeparator("")+binary
        }
        
        return "\(BitwiseSwitcher.self)(decimal=\(decimal) ~> \"\(binary)\")"
    }
}