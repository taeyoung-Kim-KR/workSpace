import UIKit


//저장 프로퍼티
//struct Student {
//    var name: String
//    var age: Int
//}
//
//var yoshikim = Student(name: "요시킴", age: 20)
print(yoshikim)


//연산 프로퍼티

struct WeeklySalary {
    var hourlyWage: Double
    var workingHours: Double
    
    var wage: Double {
        get {
            return hourlyWage * workingHours
        }
        
        set {
            workingHours = newValue / hourlyWage
        }
    }
}

var myWeeklySalary = WeeklySalary(hourlyWage: 10000, workingHours: 4)
print(myWeeklySalary)
print(myWeeklySalary.wage)

myWeeklySalary.wage = 20000
print(myWeeklySalary.workingHours)


//프로퍼티 옵저버
// 프로퍼티의 새값이 설정 될때마다 이벤트를 감지할 수 있다.

struct Student {
    var name: String {
        willSet {
            print("\(name) -> \(newValue)로 변경예정입니다.")
        }
        didSet {
            print("\(oldValue) -> \(name)으로 변경되었습니다.")
        }
    }
}

var yoshikim = Student(name: "요시킴")
yoshikim.name = "Yoshikim"


//타입 프로퍼티 static을 사용해서 선언가능하다.
// 인스턴스 생성을 하지 않아도 사용할수 있고, 저장프로퍼티 연산프로퍼티로 사용이 가능하다.

struct SomeStruct {
    static var storedTypeProperty = "some value"
    static var computerTypeProperty: Int {
        return 1
    }
}

SomeStruct.storedTypeProperty
SomeStruct.computerTypeProperty

print("\(SomeStruct.storedTypeProperty)")
print("\(SomeStruct.computerTypeProperty)")
