//
//  Pursuit.swift
//  Patterns
//
//  Created by 杨晴贺 on 2017/3/25.
//  Copyright © 2017年 Silence. All rights reserved.
//

import Foundation

// 代理协议
protocol GiveGift {
    func giveDolls()
    func giveFlowers()
    func giveChocolate()
}

// 被追求者
struct SchoolGirl {
    var name = "Kk"
}

struct Pursuit: GiveGift {
    var mm: SchoolGirl
    
    init(_ mm: SchoolGirl) {
        self.mm = mm
    }
    
    func giveDolls() {
        print("追求者送 \(mm.name) 洋娃娃")
    }
    
    func giveFlowers() {
        print("追求者送 \(mm.name) 鲜花")
    }
    
    func giveChocolate() {
        print("追求者送 \(mm.name) 巧克力")
    }
}
