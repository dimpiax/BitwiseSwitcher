# BitwiseSwitcher
Generic interpreter under IntegerType protocol for bitwise switching.

    var bitwiseSwitcher = BitwiseSwitcher<Int8>(value: 14)

    bitwiseSwitcher.insert(0)
    print(bitwiseSwitcher) // BitwiseSwitcher<Int8>(decimal=15 ~> "0001111")
    
    bitwiseSwitcher.remove(1)
    print(bitwiseSwitcher) // BitwiseSwitcher<Int8>(decimal=13 ~> "0001101")
    
    bitwiseSwitcher.operate(1)
    bitwiseSwitcher.operate(2)
    bitwiseSwitcher.operate(~3)
    print(bitwiseSwitcher) // BitwiseSwitcher<Int8>(decimal=7 ~> "0000111")
    
    print(bitwiseSwitcher.decimal) // 7

##### As addition to article: https://medium.com/@dimpiax/swift-bitwise-masking-p-2-8c74bf3c9630#.jkrprkp0p
