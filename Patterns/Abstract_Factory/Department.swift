//
//  Department.swift
//  Patterns
//
//  Created by 杨晴贺 on 2017/3/25.
//  Copyright © 2017年 Silence. All rights reserved.
//

import Foundation

struct Department {
}

// 协议
protocol IDepartment {
    func insert(_ department: Department)
    func get(_ id: Int) -> Department
}

struct SqlServerDepartment: IDepartment {
    func insert(_ department: Department) {
        print("\(#function) department")
    }
    
    func get(_ id: Int) -> Department {
        print("\(#function) department \(id)")
        return Department()
    }
}

struct AccessDepartment: IDepartment {
    func insert(_ department: Department) {
        print("\(#function) department")
    }
    
    func get(_ id: Int) -> Department {
        print("\(#function) department \(id)")
        return Department()
    }
}
