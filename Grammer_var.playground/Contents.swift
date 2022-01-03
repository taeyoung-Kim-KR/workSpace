import UIKit


var name: String = "Yoshikim"
var age: Int = 20

name
name = "요시킴"

age
age = 30

let one: Int = 1
let two: Int = 2

//one = 10 상수는 변경 불가

func sayHello(name: String) -> String {
    return "Nice to meet you, \(name)"
}

sayHello(name: "요시킴")

func introduse(name: String, age: Int) -> String {
    return "Hi, My name is \(name), I'm \(age)"
}

introduse(name: "요시킴", age: 20)

func add(a: Int, b: Int) -> Int {
    return a + b
}

add(a: 3, b: 5)
