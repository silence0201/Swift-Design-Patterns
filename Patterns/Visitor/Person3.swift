//
//  Person3.swift
//  Patterns
//
//  Created by 杨晴贺 on 2017/3/26.
//  Copyright © 2017年 Silence. All rights reserved.
//

import Foundation

// 人
class Person3: Hashable {
    var name: String
    
    init(_ name: String) {
        self.name = name
    }
    
    var hashValue: Int {
        return name.hashValue
    }
    
    static func ==(l: Person3, r:Person3) -> Bool {
        return l.hashValue == r.hashValue
    }
    
    func accept(_ visitor: Action){}
}

// 男
class Man: Person3 {
    override func accept(_ visitor: Action) {
        visitor.getManConclusion(self)
    }
}

// 女
class Woman: Person3 {
    override func accept(_ visitor: Action) {
        visitor.getWomanConclusion(self)
    }
}

// 对象结构
struct ObjectStructure {
    var elements = Set<Person3>()
    
    mutating func attach(_ element: Person3) {
        elements.insert(element)
    }
    
    mutating func detach(_ element: Person3) {
        elements.remove(element)
    }
    
    func display(_ visitor: Action) {
        for e in elements {
            e.accept(visitor)
        }
    }
}


