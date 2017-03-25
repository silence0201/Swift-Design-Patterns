//
//  Observer.swift
//  Patterns
//
//  Created by 杨晴贺 on 2017/3/25.
//  Copyright © 2017年 Silence. All rights reserved.
//

import Foundation

// 观察者
class Observer: Hashable {
    var name: String
    var sub: Subject
    
    var hashValue: Int {
        return "\(name)".hashValue
    }
    
    static func ==(l: Observer, r: Observer) -> Bool {
        return l.hashValue == r.hashValue
    }
    
    init(_ name: String, _ sub: Subject){
        self.name = name
        self.sub = sub
    }
    
    func update() {}
}

// 看股票
class StockObserver: Observer {
    override func update() {
        print("\(name) 关闭股票,继续工作")
    }
}

// 看 NBA
class NBAObserver: Observer {
    override func update() {
        print("\(name) 关闭 NBA，继续工作")
    }
}

