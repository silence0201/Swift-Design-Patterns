//
//  Barbecuer.swift
//  Patterns
//
//  Created by 杨晴贺 on 2017/3/26.
//  Copyright © 2017年 Silence. All rights reserved.
//

import Foundation

// 烧烤
struct Barbecuer {
    enum BBQ: String {
        case mutton = "烤羊肉串"
        case chickenWing = "烤鸡翅"
    }
    
    var state: BBQ = .mutton
    
    mutating func bakeMutton() {
        state = .mutton
         print("\(state.rawValue)")
    }
    
    mutating func backChickenWing() {
        state = .chickenWing
         print("\(state.rawValue)")
    }
}
