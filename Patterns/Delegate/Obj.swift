//
//  Obj.swift
//  Patterns
//
//  Created by 杨晴贺 on 2017/3/25.
//  Copyright © 2017年 Silence. All rights reserved.
//

import Foundation

class MyClass {
    weak var delegate: MyDelegate?
    
    func test(){
        delegate?.show()
    }
}
