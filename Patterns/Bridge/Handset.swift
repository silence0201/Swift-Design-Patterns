//
//  Handset.swift
//  Patterns
//
//  Created by 杨晴贺 on 2017/3/26.
//  Copyright © 2017年 Silence. All rights reserved.
//

import Foundation

// 手机软件协议
protocol HandsetSoft {
    func run()
}

// 手机游戏
struct HandsetGame: HandsetSoft {
    func run() {
        print("Run GAME")
    }
}

// 手机通讯录
struct HandsetAddressList: HandsetSoft {
    func run() {
        print("Run Address List")
    }
}

