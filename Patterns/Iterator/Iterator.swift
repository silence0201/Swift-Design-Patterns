//
//  Iterator.swift
//  Patterns
//
//  Created by 杨晴贺 on 2017/3/26.
//  Copyright © 2017年 Silence. All rights reserved.
//

import Foundation

// Crowd序列
struct Crowd: Sequence {
    let end: Int
    
    func makeIterator() ->  CrowdIterator{
        return CrowdIterator(self)
    }
}

// Crowd 迭代器
struct CrowdIterator: IteratorProtocol {
    var crowd: Crowd
    var times: Int
    
    init(_ crowd: Crowd) {
        self.crowd = crowd
        times = crowd.end - 1
    }
    
    mutating func next() -> Int? {
        let nextNumber = crowd.end - times
        guard nextNumber <= crowd.end else {
            return nil
        }
        times -= 1
        return nextNumber
    }
}
