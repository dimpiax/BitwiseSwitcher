# BitwiseSwitcher
Generic interpreter under IntegerType protocol for bitwise switching.

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

##### As addition to article: https://medium.com/@dimpiax/swift-bitwise-masking-p-2-8c74bf3c9630#.jkrprkp0p
