//
//  Company.swift
//  Patterns
//
//  Created by 杨晴贺 on 2017/3/25.
//  Copyright © 2017年 Silence. All rights reserved.
//

import Foundation

// 协议
class Company: Hashable {
    var name: String
    
    init(_ name: String){
        self.name = name ;
    }
    
    var hashValue: Int {
        return "\(name)".hashValue
    }
    
    static func ==(l: Company, r: Company) -> Bool {
        return l.hashValue == r.hashValue
    }
    
    func add (_ c: Company) {}
    func remove(_ c: Company) {}
    func display(_ depth: Int) {}
    func lineOfDuty() {}
}

// 具体公司
class ConcreteCompany: Company {
    var children = Set<Company>()
    
    override func add(_ c: Company) {
        children.insert(c)
    }
    
    override func remove(_ c: Company) {
        children.remove(c)
    }
    
    override func display(_ depth: Int) {
        print("name: \(name)")
        for child in children {
            child.display(depth + 2)
        }
    }
    
    override func lineOfDuty() {
        for child in children {
            child.lineOfDuty()
        }
    }
}

// 人力资源部
class HRDepartment: Company {
    override func display(_ depth: Int) {
        print("name: \(name)")
    }
    
    override func lineOfDuty() {
        print("\(name) 培训")
    }
}

// 财务部
class FinanceDepartment: Company {
    override func display(_ depth: Int) {
        print("name: \(name)")
    }
    
    override func lineOfDuty() {
        print("\(name) 财务")
    }
}
