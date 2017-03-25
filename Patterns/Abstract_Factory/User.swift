//
//  User.swift
//  Patterns
//
//  Created by 杨晴贺 on 2017/3/25.
//  Copyright © 2017年 Silence. All rights reserved.
//

import Foundation

struct User {
}

// 协议
protocol IUser {
    func insert(_ user: User)
    func get(_ id: Int) -> User
}

struct SqlServerUser: IUser {
    func insert(_ user: User) {
        print("\(#function) user")
    }
    
    func get(_ id: Int) -> User {
        print("\(#function) user \(id)")
        return User()
    }
}

struct AccessUser: IUser {
    func insert(_ user: User) {
        print("\(#function) user")
    }
    
    func get(_ id: Int) -> User {
        print("\(#function) user \(id)")
        return User()
    }
}
