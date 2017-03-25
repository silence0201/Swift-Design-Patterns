//
//  Player.swift
//  Patterns
//
//  Created by 杨晴贺 on 2017/3/25.
//  Copyright © 2017年 Silence. All rights reserved.
//

import Foundation

// 球员协议
protocol Player {
    var name: String { get }
    
    func attack()
    func defense()
}

// 前锋
struct Forwards: Player {
    var name: String
    
    func attack() {
        print("前锋 \(name) 进攻")
    }
    
    func defense() {
        print("前锋 \(name) 防守")
    }
}

// 中锋
struct Center: Player {
    var name: String
    
    func attack() {
        print("中锋 \(name) 进攻")
    }
    
    func defense() {
        print("中锋 \(name) 防守")
    }
}

// 后卫
struct Guards: Player {
    var name: String
    
    func attack() {
        print("后卫 \(name) 进攻")
    }
    
    func defense() {
        print("后卫 \(name) 防守")
    }
}
