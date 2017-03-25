//
//  Fund.swift
//  Patterns
//
//  Created by 杨晴贺 on 2017/3/25.
//  Copyright © 2017年 Silence. All rights reserved.
//

import Foundation

class Fund {
    var stockA: StockA
    var stockB: StockB
    var stockC: StockC
    
    init() {
        stockA = StockA()
        stockB = StockB()
        stockC = StockC()
    }
    
    func sellAB() {
        stockA.sell()
        stockB.sell()
    }
    
    func buyBC() {
        stockB.buy()
        stockC.buy()
    }
    
    func sellABC() {
        stockA.sell()
        stockB.sell()
        stockC.sell()
    }
    
    func buyABC() {
        stockA.buy()
        stockB.buy()
        stockC.buy()
    }
}
