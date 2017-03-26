//
//  SingletonClass.swift
//  Patterns
//
//  Created by 杨晴贺 on 2017/3/26.
//  Copyright © 2017年 Silence. All rights reserved.
//

import Foundation

class SingletonClass {
    var pro = 0
    
    // 静态常量
    static let sharedInstance: SingletonClass = SingletonClass()
    
    init() {}
}
