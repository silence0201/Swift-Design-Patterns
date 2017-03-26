//
//  Command.swift
//  Patterns
//
//  Created by 杨晴贺 on 2017/3/26.
//  Copyright © 2017年 Silence. All rights reserved.
//

import Foundation

// 命令
class Command: Hashable {
    var bbq: Barbecuer
    
    init(_ bbq: Barbecuer){
        self.bbq = bbq
    }
    
    var hashValue: Int{
        return bbq.state.hashValue
    }
    
    static func ==(l:Command ,r:Command) -> Bool {
        return l.hashValue == r.hashValue
    }
    
    func executeCommand() {}
}

// 烤羊肉串命令
class BakeMuttonCommand: Command {
    override init(_ bbq: Barbecuer) {
        super.init(bbq)
        self.bbq.state = .mutton
    }
    
    override func executeCommand() {
        bbq.bakeMutton()
    }
}

// 烤鸡翅命令
class BakeChickenWingCommand: Command {
    override init(_ bbq: Barbecuer) {
        super.init(bbq)
        self.bbq.state = .chickenWing
    }
    
    override func executeCommand() {
        bbq.backChickenWing()
    }
}

// 服务员
struct Waiter {
    var cmdSet = Set<Command>()
    
    mutating func setOrder(_ command: Command) {
        if command.bbq.state == .chickenWing {
            print("没有鸡翅了，请点别的烧烤")
        } else {
            cmdSet.insert(command)
            print("增加订单：\(command.bbq.state.rawValue)")
        }
    }
    
    mutating func removeOrder(_ command: Command) {
        cmdSet.remove(command)
        print("取消订单：\(command.bbq.state.rawValue)")
    }
    
    func notify() {
        for command in cmdSet {
            command.executeCommand()
        }
    }

}
