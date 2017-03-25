//
//  Factory_Method.swift
//  Patterns
//
//  Created by 杨晴贺 on 2017/3/25.
//  Copyright © 2017年 Silence. All rights reserved.
//

import Foundation

// 协议
protocol Operator2{
    var num: (Double, Double) { get set }
    
    func getResult() -> Double?
    // 工厂
    static func createOperation() -> Operator2
}

// 遵守协议
struct Addition2: Operator2{
    static func createOperation() -> Operator2 {
        return Addition2()
    }
    
    var num = (0.0, 0.0)
    
    func getResult() -> Double? {
        return num.0 + num.1
    }
}

struct Subtraction2: Operator2 {
    static func createOperation() -> Operator2 {
        return Subtraction2()
    }
    
    var num = (0.0, 0.0)
    
    func getResult() -> Double? {
        return num.0 - num.1
    }
    
}

struct Multilication2: Operator2 {
    static func createOperation() -> Operator2 {
        return Multilication2()
    }
    
    var num = (0.0, 0.0)
    
    func getResult() -> Double? {
        return num.0 + num.1
    }
}

struct Division2: Operator2 {
    static func createOperation() -> Operator2 {
        return Division2()
    }
    
    var num = (0.0, 0.0)
    
    func getResult() -> Double? {
        var result: Double?
        if  num.1 != 0 {
            result = num.0 / num.1
        }
        return result
    }
}



