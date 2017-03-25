//
//  main.swift
//  Patterns
//
//  Created by 杨晴贺 on 2017/3/18.
//  Copyright © 2017年 Silence. All rights reserved.
//

import Foundation

// MARK: - 简单工厂模式
print("------------简单工厂模式----------")
var testDivision = OperatorFactory.calculateForOperator(.division)
testDivision.num = (1, 0)
print(testDivision.getResult() ?? "Error")

var testAddition = OperatorFactory.calculateForOperator(.addition)
testAddition.num = (1, 1)
print(testAddition.getResult() ?? "Error")

// MARK: - 工厂方法
print("------------工厂方法----------")
var testAddition2 = Addition2.createOperation()
testAddition2.num = (2, 3)
print(testAddition2.getResult() ?? "Error")

var testDivison2 = Division2.createOperation()
testDivison2.num = (2, 0)
print(testDivison2.getResult() ?? "Error")

// MARK: - 抽象工厂模式
print("------------抽象工厂模式----------")
let userA = User()
let departmentA = Department()

let factory = AccessFactory()

let iuA = factory.createUser()
iuA.insert(userA)
_ = iuA.get(1)

let idA = factory.createDepartment()
idA.insert(departmentA)
_ = idA.get(1)

// MARK: - 简单工厂 + 抽象工厂
print("------------简单工厂 + 抽象工厂----------")
let userB = User()
let departmentB = Department()

DataAccess.database = .sqlServer
let iuB = DataAccess.createUser()
iuB.insert(userB)
_ = iuB.get(1)

let idB = DataAccess.createDepartment()
idB.insert(departmentB)
_ = idB.get(1)

// MARK: - 策略模式
print("------------策略模式----------")
var type = DiscountWay.twentyPersonOff
var cc: CashContext
switch type {
case .twentyPersonOff:
    cc = CashContext(CashRebate(0.8))
case .every300Get100Return:
    cc = CashContext(CashReturn(300, 100))
default:
    cc = CashContext(CashNormal())
}
print(cc.getResult(200))

var cs = CashContextWithSimpleFactoryPattern(.Default)
print(cs.getResult(100))

cs = CashContextWithSimpleFactoryPattern(.twentyPersonOff)
print(cs.getResult(200.5))

cs = CashContextWithSimpleFactoryPattern(.every300Get100Return)
print(cs.getResult(650))

// MARK: - 修饰模式
print("------------修饰模式----------")
var b = Boy("Ling")
let tShirtA = TShirt(b)
let chineseTunSuitA = ChineseTunicSuit(tShirtA)
chineseTunSuitA.show()

let chineseTunicSuitB = ChineseTunicSuit(b)
let tShirtB = TShirt(chineseTunicSuitB)
tShirtB.show()


