//
//  Work.swift
//  Patterns
//
//  Created by 杨晴贺 on 2017/3/25.
//  Copyright © 2017年 Silence. All rights reserved.
//

import Foundation

class Work {
    var hour = 0
    var state: State = ForenoonState()
    var isFinish = false
    
    func writeProgram() {
        state.writeProgram(self)
    }
}
