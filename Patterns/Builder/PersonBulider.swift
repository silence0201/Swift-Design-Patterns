//
//  PersonBulider.swift
//  Patterns
//
//  Created by 杨晴贺 on 2017/3/25.
//  Copyright © 2017年 Silence. All rights reserved.
//

import Foundation

// 协议
protocol PersonBulider {
    var person: Person2? { get set }
    
    mutating func buildHead()
    mutating func buildBody()
    mutating func buildLeftArm()
    mutating func buildRightArm()
    mutating func buildLeftLeg()
    mutating func buildRightLeg()
    mutating func createPerson() -> Person2?
}
class Person2 {
    var head: String = ""
    var body: String = "'"
    var leftArm: String = ""
    var rightArm: String = ""
    var leftLeg: String = "'"
    var rightLeg: String = ""
    
    
}

struct ThinPerson: PersonBulider {
    internal var person: Person2?

    mutating internal func createPerson() -> Person2? {
        person = Person2()
        buildHead()
        buildBody()
        buildLeftArm()
        buildRightArm()
        buildLeftLeg()
        buildRightLeg()
        return person
    }
    mutating func buildHead()  {
        person?.head = "head"
        print(#function)
    }
    
    mutating func buildBody()  {
        person?.body = "body"
        print(#function)
    }
    
    mutating func buildLeftArm()  {
        person?.leftArm = "leftArm"
        print(#function)
    }
    
    mutating func buildRightArm()  {
        person?.rightArm = "rightArm"
        print(#function)
    }
    
    mutating func buildLeftLeg()  {
        person?.leftLeg = "LeftLeg"
        print(#function)
    }
    
    mutating func buildRightLeg() {
        person?.rightLeg = "rightLeg"
        print(#function)
    }

}
