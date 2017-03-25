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
