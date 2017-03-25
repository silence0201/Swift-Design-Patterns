//
//  GameRole.swift
//  Patterns
//
//  Created by 杨晴贺 on 2017/3/25.
//  Copyright © 2017年 Silence. All rights reserved.
//

import Foundation

// 游戏角色
struct GameRole {
    var vit: Int
    var atk: Int
    var def: Int
    
    init(){
        vit = 100
        atk = 100
        def = 100
    }
    
    func stateDisplay(){
        print("生命值：\(vit)")
        print("攻击力：\(atk)")
        print("防御力：\(def)")
    }
    
    func saveState() -> RoleStateMemento {
        return RoleStateMemento(vit: vit, atk: atk, def: def)
    }
    
    mutating func recoverState(_ memento: RoleStateMemento) {
        vit = memento.vit
        atk = memento.atk
        def = memento.def
    }
    
    mutating func fight() {
        vit = 0
        atk = 0
        def = 0
    }
}

