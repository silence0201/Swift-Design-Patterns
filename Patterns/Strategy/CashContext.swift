//
//  CashContext.swift
//  Patterns
//
//  Created by 杨晴贺 on 2017/3/25.
//  Copyright © 2017年 Silence. All rights reserved.
//

import Foundation

// 策略选择上下文
struct CashContext {
    private let cs: CashSuper
    init(_ cs: CashSuper) {
        self.cs = cs
    }
    func getResult(_ money: Double) -> Double{
        return cs.acceptCash(money)
    }
}

// 优惠方式
enum DiscountWay {
    case Default, twentyPersonOff, every300Get100Return
}

struct CashContextWithSimpleFactoryPattern {
    private let cs: CashSuper
    init(_ type: DiscountWay) {
        switch type {
        case .twentyPersonOff:
            cs = CashRebate(0.8)
        case .every300Get100Return:
            cs = CashReturn(300, 100)
        default:
            cs = CashNormal()
        }
    }
    
    func getResult(_ money: Double) -> Double {
        return cs.acceptCash(money)
    }
}


