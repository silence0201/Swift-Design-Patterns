//
//  Action.swift
//  Patterns
//
//  Created by 杨晴贺 on 2017/3/26.
//  Copyright © 2017年 Silence. All rights reserved.
//

import Foundation

protocol Action {
    func getManConclusion(_ elemA: Man)
    func getWomanConclusion(_ elemB: Woman)
}

// 成功
struct Success: Action {
    func getManConclusion(_ elemA: Man) {
        print("\(type(of: elemA)) \(type(of: self))")
    }
    
    func getWomanConclusion(_ elemB: Woman) {
        print("\(type(of: elemB)) \(type(of: self))")
    }
}

// 失败
struct Failing: Action {
    func getManConclusion(_ elemA: Man) {
        print("\(type(of: elemA)) \(type(of: self))")
    }
    
    func getWomanConclusion(_ elemB: Woman) {
        print("\(type(of: elemB)) \(type(of: self))")
    }
}

// 恋爱
struct Amativeness: Action {
    func getManConclusion(_ elemA: Man) {
        print("\(type(of: elemA)) \(type(of: self))")
    }
    
    func getWomanConclusion(_ elemB: Woman) {
        print("\(type(of: elemB)) \(type(of: self))")
    }
}

// 结婚
struct Marriage: Action {
    func getManConclusion(_ elemA: Man) {
        print("\(type(of: elemA)) \(type(of: self))")
    }
    
    func getWomanConclusion(_ elemB: Woman) {
        print("\(type(of: elemB)) \(type(of: self))")
    }
}


