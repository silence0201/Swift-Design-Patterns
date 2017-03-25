//
//  State.swift
//  Patterns
//
//  Created by 杨晴贺 on 2017/3/25.
//  Copyright © 2017年 Silence. All rights reserved.
//

import Foundation

// 协议
protocol State {
    func writeProgram(_ work: Work)
}

// 上午状态
struct ForenoonState: State {
    func writeProgram(_ work: Work) {
        if work.hour < 12{
            print("\(work.hour) 上午")
        }else{
            work.state = NoonState()
            work.writeProgram()
        }
    }
}

// 中午状态
struct NoonState: State {
    func writeProgram(_ work: Work) {
        if work.hour < 13 {
            print("\(work.hour) 中午")
        } else {
            work.state = AfternoonState()
            work.writeProgram()
        }
    }
}

// 下午状态
struct AfternoonState: State {
    func writeProgram(_ work: Work) {
        if work.hour < 17 {
            print("\(work.hour) 下午")
        } else {
            work.state = EveningState()
            work.writeProgram()
        }
    }
}

// 晚上状态
struct EveningState: State {
    func writeProgram(_ work: Work) {
        if work.isFinish {
            work.state = RestState()
            work.writeProgram()
        } else {
            if work.hour < 21 {
                print("\(work.hour) 晚上")
            } else {
                work.state = SleepingState()
                work.writeProgram()
            }
        }
    }
}

// 睡觉状态
struct SleepingState: State {
    func writeProgram(_ work: Work) {
        print("\(work.hour) 睡觉")
    }
}

// 休息状态
struct RestState: State {
    func writeProgram(_ work: Work) {
        print("\(work.hour) 休息")
    }
}
