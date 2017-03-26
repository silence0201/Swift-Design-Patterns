//
//  Request.swift
//  Patterns
//
//  Created by 杨晴贺 on 2017/3/26.
//  Copyright © 2017年 Silence. All rights reserved.
//

import Foundation

// 请求
struct Request {
    enum RequestType: String {
        case leave = "请假"
        case salary = "加薪"
    }
    
    var requestType: RequestType
    var requestContent: String
    var number: Int
}
