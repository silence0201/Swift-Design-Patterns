//
//  main.swift
//  Patterns
//
//  Created by 杨晴贺 on 2017/3/18.
//  Copyright © 2017年 Silence. All rights reserved.
//

import Foundation

var testDivision = OperatorFactory.calculateForOperator(.division)
testDivision.num = (1, 0)
print(testDivision.getResult() ?? "Error")

var testAddition = OperatorFactory.calculateForOperator(.addition)
testAddition.num = (1, 1)
print(testAddition.getResult() ?? "Error")

