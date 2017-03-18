//
//  Simple_Factory.swift
//  Patterns
//
//  Created by 杨晴贺 on 2017/3/18.
//  Copyright © 2017年 Silence. All rights reserved.
//

import Foundation

// 协议
protocol Operator {
    var num: (Double, Double) { get set }
    
    func getResult() -> Double?
}

// 遵守协议
struct Addition: Operator {
    var num = (0.0, 0.0)
    
    func getResult() -> Double? {
        return num.0 + num.1
    }
}

class Subtraction: Operator {
    var num = (0.0, 0.0)
    
    func getResult() -> Double? {
        return num.0 - num.1
    }
}

struct Multiplication: Operator {
    var num = (0.0, 0.0)
    
    func getResult() -> Double? {
        return num.0 * num.1
    }
}

struct Division: Operator {
    var num = (0.0, 0.0)
    
    func getResult() -> Double? {
        var result: Double?
        if num.1 != 0 {
            result = num.0 / num.1
        }
        return result
    }
}

// 操作符枚举
enum Operators {
    case addition, subtraction, multiplication, division
}

// 工厂
struct OperatorFactory {
    static func calculateForOperator(_ opt: Operators) -> Operator {
        switch opt {
        case .addition:
            return Addition()
        case .subtraction:
            return Subtraction()
        case .multiplication:
            return Multiplication()
        case .division:
            return Division()
        }
    }
}
