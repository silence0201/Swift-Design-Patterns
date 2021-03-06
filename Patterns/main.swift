//
//  main.swift
//  Patterns
//
//  Created by 杨晴贺 on 2017/3/18.
//  Copyright © 2017年 Silence. All rights reserved.
//

import Foundation

// MARK: - 1.简单工厂模式
print("------------简单工厂模式----------")
var testDivision = OperatorFactory.calculateForOperator(.division)
testDivision.num = (1, 0)
print(testDivision.getResult() ?? "Error")

var testAddition = OperatorFactory.calculateForOperator(.addition)
testAddition.num = (1, 1)
print(testAddition.getResult() ?? "Error")

// MARK: - 2.工厂方法
print("------------工厂方法----------")
var testAddition2 = Addition2.createOperation()
testAddition2.num = (2, 3)
print(testAddition2.getResult() ?? "Error")

var testDivison2 = Division2.createOperation()
testDivison2.num = (2, 0)
print(testDivison2.getResult() ?? "Error")

// MARK: - 3.抽象工厂模式
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

// 简单工厂 + 抽象工厂
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

// MARK: - 4.策略模式
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

// MARK: - 5.修饰模式
print("------------修饰模式----------")
var b = Boy("Ling")
let tShirtA = TShirt(b)
let chineseTunSuitA = ChineseTunicSuit(tShirtA)
chineseTunSuitA.show()

let chineseTunicSuitB = ChineseTunicSuit(b)
let tShirtB = TShirt(chineseTunicSuitB)
tShirtB.show()

// MARK: - 6.代理模式
print("------------代理模式----------")
var girl = SchoolGirl()
girl.name = "Jane"

let p = Sender(girl)

p.giveDolls()
p.giveFlowers()
p.giveChocolate()

// MARK: - 7.原型模式
print("------------原型模式----------")
let resumeA = Resume("Kingcos")
resumeA.setPersonInfo("Boy", "21")
resumeA.setWorkExperience("2016.8", "School")

let resumeB = resumeA.clone()
resumeB.setWorkExperience("2016.9-2016.12", "School")

let resumeC = resumeA.clone()
resumeC.setWorkExperience("2014-2018", "University")

//深拷贝
resumeA.display()
resumeB.display()
resumeC.display()

// MARK: - 8.模板模式
print("------------模板模式----------")
let pA = TestPaperA()
pA.questionA()
pA.questionB()
pA.questionC()

let pB = TestPaperB()
pB.questionA()
pB.questionB()
pB.questionC()

// MARK: - 9.外观模式
print("------------外观模式----------")
let fundManager = Fund()
fundManager.buyBC()
fundManager.buyABC()
fundManager.sellAB()
fundManager.sellABC()

// MARK: - 10.建造者模式
print("------------建造者模式----------")
var bulider = ThinPerson()
let pp = bulider.createPerson()
print(pp?.body ?? "")

// MARK: - 11.观察者模式
print("------------观察者模式----------")
let boss = Boss()
let colleagueA = StockObserver("A", boss)
let colleagueB = NBAObserver("B", boss)
// 添加通知者
boss.attach(colleagueA)
boss.attach(colleagueB)
// 移除通知者
boss.detach(colleagueA)
// 发出通知
boss.notify()

// MARK: - 12.委托模式
print("------------委托模式----------")
var delegate = MyDelegate()
var obj = MyClass()
obj.delegate = delegate
obj.test()

// MARK: - 13.状态模式
print("------------状态模式----------")
let work = Work()
for i in stride(from: 9, through: 22, by: 1) {
    if i == 17 {
        work.isFinish = true
    }
    work.hour = i
    work.writeProgram()
}

// MARK: - 14.适配器模式
print("------------适配器模式----------")
let playerA = Forwards(name: "小明")
playerA.attack()

let playerB = Guards(name: "小红")
playerB.defense()

let playerC = Translator(name: "NiCo")
playerC.attack()
playerC.defense()

// MARK: - 15.备忘录模式
print("------------备忘录模式----------")
var gp = GameRole()
gp.stateDisplay()

let stateAdmin = RoleStateCaretaker(memento: gp.saveState())

gp.fight()
gp.stateDisplay()

gp.recoverState(stateAdmin.memento)
gp.stateDisplay()

// MARK: - 16.组合模式
print("------------组合模式----------")
let root = ConcreteCompany("总公司")
root.add(HRDepartment("总公司人力资源部"))
root.add(FinanceDepartment("总公司财务部"))

let com = ConcreteCompany("分公司")
com.add(HRDepartment("分公司人力资源部"))
com.add(FinanceDepartment("分公司财务部"))
root.add(com)

let comA = ConcreteCompany("分公司 A")
comA.add(HRDepartment("分公司 A 人力资源部"))
comA.add(FinanceDepartment("分公司 A 财务部"))
root.add(com)

let comB = ConcreteCompany("办事处 B")
comB.add(HRDepartment("办事处 B 人力资源部"))
comB.add(FinanceDepartment("办事处 B 财务部"))
root.add(comA)
root.display(1)
root.lineOfDuty()

// MARK: - 17.迭代器模式
print("------------迭代器模式----------")
for i in Crowd(end: 10){
    print(i)
}

// MARK: - 18.单例模式
print("------------单例模式----------")
var i = SingletonClass.sharedInstance
i.pro = 100
var j = SingletonClass.sharedInstance
print(j.pro)

// MARK: - 19.桥接器模式
print("------------桥接器模式----------")
var hs = HandsetBrandA(soft: HandsetGame())
hs.run()
hs.soft = HandsetAddressList()
hs.run()

// MARK: - 20.命令模式
print("------------命令模式----------")
let bbq = Barbecuer()
let muttonA = BakeMuttonCommand(bbq)
let muttonB = BakeMuttonCommand(bbq)
let chickenWingA = BakeChickenWingCommand(bbq)

var waiter = Waiter()

waiter.setOrder(muttonA)
waiter.setOrder(muttonB)
waiter.setOrder(chickenWingA)
waiter.notify()

// MARK: - 21.责任链模式
print("------------责任链模式----------")
let generalMng = GeneralManager("总经理")
let majordomo = Majordomo(name: "总监", superior: generalMng)
let commonMng = CommonManager(name: "普通经理", superior: majordomo)

let rqA = Request(requestType: .leave, requestContent: "小菜请假", number: 1)
commonMng.requestApplications(rqA)

let rqB = Request(requestType: .leave, requestContent: "小菜请假", number: 4)
commonMng.requestApplications(rqB)

let rqC = Request(requestType: .salary, requestContent: "小菜加薪", number: 200)
commonMng.requestApplications(rqC)

let rqD = Request(requestType: .salary, requestContent: "小菜加薪", number: 1000)
commonMng.requestApplications(rqD)

// MARK: - 22.中介者模式
print("------------中介者模式----------")
var unsc = UnitedNationsSecurityCouncil()
let cA = CountryA(unsc)
let cB = CountryB(unsc)

unsc.cA = cA
unsc.cB = cB

cA.declare("Message A")
cB.declare("Message B")

// MARK: - 23.享元模式
print("------------享元模式----------")
var f =  WebsiteFactory()

let wsA = f.getWebsiteCategory("产品展示")
wsA.use()

let wsB = f.getWebsiteCategory("产品展示")
wsB.use()

let wsC = f.getWebsiteCategory("博客")
wsC.use()

let wsD = f.getWebsiteCategory("博客")
wsD.use()

let wsE = f.getWebsiteCategory("博客")
wsE.use()

print("分类数：\(f.getWebsiteCount())")

// MARK: - 24.解释器模式
print("------------解释器模式----------")
var context = PlayContext(text:
    " T 400 O 2 E 0.5 A 3 E 0.5 G 0.5 D 3 E 0.5 G 0.5 A 0.5 O 3 C 1 O 2 A 0.5 G 1 C 0.5 E 0.5 D 3 "
)

while context.text.characters.count > 1 {
    let range = Range(uncheckedBounds: (context.text.index(after: context.text.startIndex), context.text.index(context.text.startIndex, offsetBy: 2)))
    let str = context.text.substring(with: range)
    
    var expression = Expression()
    
    switch str {
    case "T":
        expression = Speed()
    case "O":
        expression = Scale()
    case "C", "D", "E", "F", "G", "A", "B", "P":
        expression = Note()
    default: break
    }
    expression.interpret(&context)
}

// MARK: - 25.访问者模式
print("------------访问者模式----------")
var os = ObjectStructure()
os.attach(Man("Kingcos"))
os.attach(Woman("Jane"))

let success = Success()
os.display(success)

let failing = Success()
os.display(failing)

let loving = Amativeness()
os.display(loving)

let marriage = Marriage()
os.display(marriage)
