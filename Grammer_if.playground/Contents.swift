import UIKit

var isChecked = false

if isChecked {
    print("체크되어 있습니다.")
} else {
    print("체크되어 있지 않습니다.")
}

var time = 12

if time == 9 {
    print("아침식사 시간입니다.")
} else if time == 12 {
    print("점심식사 시간입니다.")
} else if time == 19 {
    print("저녁식사 시간입니다.")
} else {
    print("자유시간 입니다.")
}

let color = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)

switch color {
case #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0):
    print("WHITE")
case #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1):
    print("BLACK")
case #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1):
    print("GREEN")
default:
    print("입력이 잘못 되었습니다.")
}


func getName(name: String?) -> String {
    guard let uname = name else {
        return "이름값이 존재하지 않습니다."
    }
    return uname
}

getName(name: "요시킴")
getName(name: nil)
