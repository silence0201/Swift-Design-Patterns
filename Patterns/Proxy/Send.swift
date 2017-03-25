//
//  Send.swift
//  Patterns
//
//  Created by 杨晴贺 on 2017/3/25.
//  Copyright © 2017年 Silence. All rights reserved.
//

import Foundation

struct Sender: GiveGift {
    var gg: Pursuit
    
    init(_ mm: SchoolGirl) {
        self.gg = Pursuit(mm)
    }
    
    func giveChocolate() {
        gg.giveChocolate()
    }
    
    func giveFlowers() {
        gg.giveFlowers()
    }
    
    func giveDolls() {
        gg.giveDolls()
    }
}
