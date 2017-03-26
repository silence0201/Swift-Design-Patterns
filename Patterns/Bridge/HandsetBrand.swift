//
//  HandsetBrand.swift
//  Patterns
//
//  Created by 杨晴贺 on 2017/3/26.
//  Copyright © 2017年 Silence. All rights reserved.
//

import Foundation

// 手机品牌协议
protocol HandsetBrand {
    var soft: HandsetSoft { get }
    
    func run()
}

// 品牌A
struct HandsetBrandA: HandsetBrand {
    var soft: HandsetSoft
    
    func run() {
        soft.run()
    }
}

// 品牌 B
struct HandsetBrandB: HandsetBrand {
    var soft: HandsetSoft
    
    func run() {
        soft.run()
    }
}
