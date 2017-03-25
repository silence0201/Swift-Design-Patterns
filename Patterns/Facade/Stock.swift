//
//  Stock.swift
//  Patterns
//
//  Created by 杨晴贺 on 2017/3/25.
//  Copyright © 2017年 Silence. All rights reserved.
//

import Foundation

// 股票协议
protocol Stock {
    func sell()
    func buy()
}

// 股票A
struct StockA: Stock {
    func sell() {
        print("StockA 卖出")
    }
    
    func buy() {
        print("StockA 买入")
    }
    
}

// 股票B
struct StockB: Stock {
    func sell() {
        print("StockB 卖出")
    }
    func buy() {
        print("StockB 买入")
    }
}

// 股票 C
struct StockC: Stock {
    func sell() {
        print("StockC 卖出")
    }
    
    func buy() {
        print("StockC 买入")
    }
}

