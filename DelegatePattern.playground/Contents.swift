import UIKit

/* Delegate Pattern
 - 한 클래스와 다른 클래스의 상호작용을 간단하게 할 수 있다.
 - 프로토콜을 이용해서 클래스 간 요구사항의 전달이 수월해 진다.
 - 클래스 또는 구조체를 상속할 필요가 없기 때문에 가볍게 사용할 수 있다.
 
 @ 해야하는 일의 일부분을 위임하고 대신 처리해 주는 것
*/

protocol HomeDelegate {
    func solveMathProblems()
}

class Me: HomeDelegate {
    
    var yoshikim = MathMaster()
    func askForHelp() {
        self.yoshikim.delegate = self
        self.yoshikim.didHomeWork()
    }
    func solveMathProblems() {
        print("숙제가 완료되었습니다.")
    }
}

class MathMaster {
    var delegate: HomeDelegate?
    
    func didHomeWork() {
        self.delegate?.solveMathProblems()
    }
}

var friend = Me()
friend.askForHelp()
