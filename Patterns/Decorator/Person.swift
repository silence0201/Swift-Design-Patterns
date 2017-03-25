//
//  Person.swift
//  Patterns
//
//  Created by 杨晴贺 on 2017/3/25.
//  Copyright © 2017年 Silence. All rights reserved.
//

import Foundation

// 协议
protocol Person {
    func show()
}

// 遵守协议
struct Boy: Person {
    var name = ""
    
    init(){}
    init(_ name: String) {
        self.name = name
    }
    
    func show() {
        print("\(name)")
    }
}
