//
//  Delegate.swift
//  Patterns
//
//  Created by 杨晴贺 on 2017/3/25.
//  Copyright © 2017年 Silence. All rights reserved.
//

import Foundation

protocol Delegate {
    func show()
}

class MyDelegate: Delegate {
    func show() {
        print(#function)
    }
}
