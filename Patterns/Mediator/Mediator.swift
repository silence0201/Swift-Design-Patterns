//
//  Mediator.swift
//  Patterns
//
//  Created by 杨晴贺 on 2017/3/26.
//  Copyright © 2017年 Silence. All rights reserved.
//

import Foundation

// 联合国协议
protocol UnitedNations {
    func declare(_ message: String, _ colleague: Country)
}

// 联合国安理会
class UnitedNationsSecurityCouncil: UnitedNations {
    var cA: CountryA?
    var cB: CountryB?
    
    func declare(_ message: String, _ colleague: Country) {
        if type(of: colleague) == type(of: cA!) {
            cB!.getMessage(message)
        } else {
            cA!.getMessage(message)
        }
    }
}

// 国家协议
protocol Country {
    var mediator: UnitedNations { get }
}

// A国
class CountryA: Country {
    var mediator: UnitedNations
    
    init(_ mediator: UnitedNations) {
        self.mediator = mediator
    }
    
    func declare(_ message: String) {
        mediator.declare(message, self)
    }
    
    func getMessage(_ message: String) {
        print("A 国获得消息:\(message)")
    }
}

// B国
class CountryB: Country {
    var mediator: UnitedNations
    
    init(_ mediator: UnitedNations) {
        self.mediator = mediator
    }
    
    func declare(_ message: String) {
        mediator.declare(message, self)
    }
    
    func getMessage(_ message: String) {
        print("B 国获得消息:\(message)")
    }
}
