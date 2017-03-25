//
//  Resume.swift
//  Patterns
//
//  Created by 杨晴贺 on 2017/3/25.
//  Copyright © 2017年 Silence. All rights reserved.
//

import Foundation

class Resume {
    private var name = ""
    private var sex = ""
    private var age = ""
    
    var work: WorkExperience
    
    init(_ name: String){
        self.name = name
        self.work = WorkExperience()
    }
    
    init(_ work: WorkExperience) {
        self.work = work.clone()
    }
    
    func setPersonInfo(_ sex: String, _ age: String){
        self.sex = sex
        self.age = age
    }
    
    func setWorkExperience(_ workDate: String, _ company: String){
        work.workDate = workDate
        work.company = company
    }
    
    func display() {
        print("个人信息：\(name) \(sex) \(age)")
        print("工作经历：\(work.workDate) \(work.company)")
    }
    
    // 克隆
    func clone() -> Resume {
        let resume = Resume(work)
        resume.name = name
        resume.sex = sex
        resume.age = age
        return resume
    }
}
