//
//  Abstract_Factory.swift
//  Patterns
//
//  Created by 杨晴贺 on 2017/3/25.
//  Copyright © 2017年 Silence. All rights reserved.
//

import Foundation



// 工厂协议
protocol IFactory {
    func createUser() -> IUser
    func createDepartment() -> IDepartment
}

struct SqlServerFactory: IFactory {
    func createUser() -> IUser {
        return SqlServerUser()
    }
    
    func createDepartment() -> IDepartment {
        return SqlServerDepartment()
    }
}

struct AccessFactory: IFactory {
    internal func createDepartment() -> IDepartment {
        return AccessDepartment()
    }

    func createUser() -> IUser {
        return AccessUser()
    }
}

// 简单工厂 + 抽象工厂
enum Database {
    case sqlServer, access
}

struct DataAccess {
    static var database: Database = .access
    
    static func createUser() -> IUser{
        switch database {
        case .sqlServer:
            return SqlServerUser()
        case .access:
            return AccessUser()
        }
    }
    
    static func createDepartment() -> IDepartment{
        switch database {
        case .sqlServer:
            return SqlServerDepartment()
        case .access:
            return AccessDepartment()
        }
    }
}


