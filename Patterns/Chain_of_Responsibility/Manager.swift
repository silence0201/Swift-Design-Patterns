//
//  Manager.swift
//  Patterns
//
//  Created by 杨晴贺 on 2017/3/26.
//  Copyright © 2017年 Silence. All rights reserved.
//

import Foundation

// 经理协议
protocol Manager {
    var name: String { get }
    var superior: Manager? { get }
    
    func requestApplications(_ request: Request)
}

// 普通经理
struct CommonManager: Manager {
    var name: String
    var superior: Manager?
    
    func requestApplications(_ request: Request) {
        if request.requestType == .leave && request.number <= 2 {
            print("CommonManager 批准：\(request.requestType.rawValue) \(request.number) 天")
        }else{
            superior?.requestApplications(request)
        }
    }
}

// 总监
struct Majordomo: Manager {
    var name: String
    var superior: Manager?
    
    func requestApplications(_ request: Request) {
        if request.requestType == .leave && request.number <= 5 {
            print("Majordomo 批准：\(request.requestType.rawValue) \(request.number) 天")
        } else {
            superior!.requestApplications(request)
        }
    }
}

// 总经理
struct GeneralManager: Manager {
    var name: String
    var superior: Manager?
    
    init(_ name: String) {
        self.name = name
    }
    
    func requestApplications(_ request: Request) {
        if request.requestType == .leave {
            print("GeneralManager 批准：\(request.requestType.rawValue) \(request.number) 天")
        } else if request.requestType == .salary
            && request.number <= 500 {
            print("GeneralManager 批准：\(request.requestType.rawValue) \(request.number) 元")
        } else if request.requestType == .salary
            && request.number > 500 {
            print("GeneralManager 考虑考虑")
        }
    }
}
