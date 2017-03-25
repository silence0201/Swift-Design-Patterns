//
//  Cash.swift
//  Patterns
//
//  Created by 杨晴贺 on 2017/3/25.
//  Copyright © 2017年 Silence. All rights reserved.
//

import Foundation

// 协议
protocol CashSuper {
    func acceptCash(_ money: Double) -> Double
}

// 普通
struct CashNormal: CashSuper {
    func acceptCash(_ money: Double) -> Double {
        return money
    }
}

// 打折
struct CashRebate: CashSuper {
    let moneyRebate: Double
    
    init(_ moneyRebate: Double) {
        self.moneyRebate = moneyRebate ;
    }
    
    func acceptCash(_ money: Double) -> Double {
        return money * moneyRebate
    }
}

// 满减
struct CashReturn: CashSuper {
    let moneyCondition: Double
    let moneyReturn: Double
    
    init(_ moneyCondition: Double, _ moneyReturn: Double) {
        self.moneyReturn = moneyReturn
        self.moneyCondition = moneyCondition
    }
    
    func acceptCash(_ money: Double) -> Double {
        var result = money
        if result >= moneyCondition{
            result = money - Double(Int(money / moneyCondition)) * moneyReturn
        }
        return result
    }
}
