# Swift-Design-Patterns

使用Swift语言实现设计模式

## 前言

### 不管用什么样的设计模式，都遵守了一下的设计原则

`单一职责原则(SRP)`就是一个类而言，只做一件事

`开放封闭原则(OCP)`软件实体（类、模块、函数等）提供扩展权，不应该提供随意修改的权利

`依赖倒转原则(DIP)`高层模块哦不应该依赖底层模块，两个都应该依赖抽象。抽象不应该依赖细节，细节应该依赖抽象

`里氏代替原则(LSP)`子类型必须能够替换掉它们的父类型

`迪米特原则(LoD)`如果两个类不必要彼此直接通信，那么这两个类就不应当发生直接的相互作用。如果其中一个类需要调用另一个类的某个方法的话，可以通过第三个者转发这个调用

`合成/聚合复用原则(CARP)`尽量使用合成/聚合,尽量不要使用类继承

## 目录

1. [简单工厂模式（Simple Factory Pattern）](Patterns/Simple_Factory)
2. [工厂方法模式（Factory Method Pattern）](Patterns/Factory_Method)
3. [抽象工厂模式（Abstract Factory Pattern）](Patterns/Abstract_Factory)
4. [策略模式（Strategy Pattern）](Patterns/Strategy)
5. [装饰模式（Decorator Pattern）](Patterns/Decorator)
6. [代理模式（Proxy Pattern）](Patterns/Proxy)
7. [原型模式（Prototype Pattern）](Patterns/Prototype)
8. [模版模式（Template Pattern）](Patterns/Template)
9. [外观模式（Facade Pattern）](Patterns/Facade)
10. [建造者模式（Builder Pattern）](Patterns/Builder)
11. [观察者模式（Observer Pattern）](Patterns/Observer)
12. [委托模式（Delegate Pattern）](Patterns/Delegate)
13. [状态模式（State Pattern）](Patterns/State)
14. [适配器模式（Adapter Pattern）](Patterns/Adapter)
15. [备忘录模式（Memento Pattern）](Patterns/Memento)
16. [组合模式（Composite Pattern）](Patterns/Composite)
17. [迭代器模式（Iterator Pattern）](Patterns/Iterator)
18. [单例模式（Singleton Pattern）](Patterns/Singleton)
19. [桥接模式（Bridge Pattern）](Patterns/Bridge)
20. [命令模式（Command Pattern）](Patterns/Command)
21. [职责链模式（Chain of Responsibility Pattern）](Patterns/Chain_of_Responsibility)
22. [中介者模式（Mediator Pattern）](Patterns/Mediator)
23. [享元模式（Flyweight Pattern）](Patterns/Flyweight)
24. [解释器模式（Interpreter Pattern）](Patterns/Interpreter)
25. [访问者模式（Visitor Pattern）](Patterns/Visitor)

## 参考资料

- [大话设计模式](https://book.douban.com/subject/2334288/)
- [ochococo/Design-Patterns-In-Swift](https://github.com/ochococo/Design-Patterns-In-Swift)
- [kingcos/Swift-3-Design-Patterns](https://github.com/kingcos/Swift-3-Design-Patterns)

## 许可

MIT
