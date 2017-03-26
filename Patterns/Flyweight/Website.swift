//
//  Website.swift
//  Patterns
//
//  Created by 杨晴贺 on 2017/3/26.
//  Copyright © 2017年 Silence. All rights reserved.
//

import Foundation

// 网站协议
protocol Website {
    func use()
}

// 具体网站
struct ConcreteWebsite: Website {
    var name: String
    
    func use() {
        print("name:\(name)")
    }
}

// 网站工厂
struct WebsiteFactory {
    var flyweights = Dictionary<String, Website>()
    
    mutating func getWebsiteCategory(_ key: String) -> Website {
        if !flyweights.keys.contains(key) {
            flyweights[key] = ConcreteWebsite(name: key)
        }
        return flyweights[key]!
    }
    
    func getWebsiteCount() -> Int {
        return flyweights.count
    }
}
