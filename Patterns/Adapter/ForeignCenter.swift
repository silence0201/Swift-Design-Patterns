//
//  ForeignCenter.swift
//  Patterns
//
//  Created by 杨晴贺 on 2017/3/25.
//  Copyright © 2017年 Silence. All rights reserved.
//

import Foundation

// 外籍中锋
struct ForeignCenter {
    var name: String
    
    func jinGong() {
        print("外籍中锋 \(name) 进攻")
    }
    
    func fangShou() {
        print("外籍中锋 \(name) 防守")
    }
}

// 翻译
struct Translator: Player {
    var name: String
    var foreignCenter: ForeignCenter
    
    init(name: String) {
        self.name = name
        self.foreignCenter = ForeignCenter(name: name)
    }
    
    func attack() {
        foreignCenter.jinGong()
    }
    
    func defense() {
        foreignCenter.fangShou()
    }
}
