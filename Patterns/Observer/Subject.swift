//
//  Subject.swift
//  Patterns
//
//  Created by 杨晴贺 on 2017/3/25.
//  Copyright © 2017年 Silence. All rights reserved.
//

import Foundation

// 协议
protocol Subject {
    func attach(_ observer: Observer)
    func detach(_ observer: Observer)
    func notify()
}

class Boss: Subject {
    var observers = Set<Observer>()
    
    func attach(_ observer: Observer) {
        observers.insert(observer)
    }
    
    func detach(_ observer: Observer) {
        observers.remove(observer)
    }
    
    func notify() {
        for o in observers{
            o.update()
        }
    }
}
