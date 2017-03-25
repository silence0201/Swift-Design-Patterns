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
		
