//
//  Exam.swift
//  Patterns
//
//  Created by 杨晴贺 on 2017/3/25.
//  Copyright © 2017年 Silence. All rights reserved.
//

import Foundation

// 考试协议
protocol Exam {
    func questionA()
    func questionB()
    func questionC()
    
    func answerA() -> String
    func answerB() -> String
    func answerC() -> String
}

// 试卷
class TestPaper: Exam {
    // 模板方法
    func questionA() {
        print("Q&A 1 \(answerA())")
    }
    
    func questionB() {
        print("Q&A 2 \(answerB())")
    }
    
    func questionC() {
        print("Q&A 3 \(answerC())")
    }
    
    func answerA() -> String {
        return ""
    }
    
    func answerB() -> String {
        return ""
    }
    
    func answerC() -> String {
        return ""
    }
}
