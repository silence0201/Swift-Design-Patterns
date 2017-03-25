//
//  Paper.swift
//  Patterns
//
//  Created by 杨晴贺 on 2017/3/25.
//  Copyright © 2017年 Silence. All rights reserved.
//

import Foundation

// A的试卷
class TestPaperA:TestPaper {
    override func answerA() -> String {
        return "A"
    }
    
    override func answerB() -> String {
        return "B"
    }
    
    override func answerC() -> String {
        return "C"
    }
}

// B的试卷
class TestPaperB: TestPaper {
    override func answerA() -> String {
        return "C"
    }
    override func answerB() -> String {
        return "B"
    }
    override func answerC() -> String {
        return "A"
    }
}
