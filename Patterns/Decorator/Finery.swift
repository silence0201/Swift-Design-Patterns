//
//  Finery.swift
//  Patterns
//
//  Created by 杨晴贺 on 2017/3/25.
//  Copyright © 2017年 Silence. All rights reserved.
//

import Foundation

// 修饰物协议
class Finery: Person {
    var component: Person
    
    init(_ component: Person){
        self.component = component
    }
    
    func show() {
        component.show()
    }
}

// 继承
class TShirt: Finery {
    override func show() {
        print("T Shirt")
        super.show()
    }
}

// 继承
class ChineseTunicSuit: Finery {
    override func show() {
        print("中山装")
        super.show()
    }
}
