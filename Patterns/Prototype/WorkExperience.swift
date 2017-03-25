//
//  WorkExperience.swift
//  Patterns
//
//  Created by 杨晴贺 on 2017/3/25.
//  Copyright © 2017年 Silence. All rights reserved.
//

import Foundation

// 工作经历
class WorkExperience {
    var workDate = ""
    var company = ""
    
    init(){}
    
    init(_ workDate: String, _ company: String){
        self.workDate = workDate
        self.company = company
    }
    
    // clone
    func clone() -> WorkExperience {
        return WorkExperience(workDate, company)
    }
}

