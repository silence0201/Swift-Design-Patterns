//
//  RoleStateMemento.swift
//  Patterns
//
//  Created by 杨晴贺 on 2017/3/25.
//  Copyright © 2017年 Silence. All rights reserved.
//

import Foundation

// 游戏状态备忘
struct RoleStateMemento {
    var vit: Int
    var atk: Int
    var def: Int
}

// 游戏状态管理
struct RoleStateCaretaker {
    var memento: RoleStateMemento
}
