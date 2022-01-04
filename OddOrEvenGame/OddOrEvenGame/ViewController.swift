//
//  ViewController.swift
//  OddOrEvenGame
//
//  Created by 김태영 on 2022/01/03.
//


// 1. 컴퓨터가 1에서 10까지 랜덤으로 숫자를 선택합니다.
// 2. 사용자는 가진 구슬개수를 걸고 홀짝 중의 하나를 선택한다.
// 3. 결과값이 화면에 보여진다.


import UIKit

class ViewController: UIViewController {

    @IBOutlet var computerBallCountLabel: UILabel!
    @IBOutlet var userBallCountLabel: UILabel!
    @IBOutlet var resultLabel: UILabel!
    
    var comBallCount: Int = 20
    var userBallCount: Int = 20
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        computerBallCountLabel.text = String(comBallCount)
        userBallCountLabel.text = String(userBallCount)
        
        
    }

    @IBAction func gameStartPressed(_ sender: Any) {
        print("게임시작!")
        
        let alert = UIAlertController.init(title: "GAME START", message: "홀 짝을 선택해주세요.", preferredStyle: .alert)

        let oddBtn = UIAlertAction.init(title: "홀", style: .default) { _ in
            print("홀버튼을 클릭했습니다.")
            print(alert.textFields?.first?.text)

            guard let input = alert.textFields?.first?.text else {
                return
            }
            print("입력한 값은 \(input)입니다.")
            
            guard let value = Int(input) else {
                return
            }
            self.getWinner(count: value, select: "홀")
        }

        let evenBtn = UIAlertAction.init(title: "짝", style: .default) { _ in
            print("짝 버튼을 클릭했습니다.")

            guard let input = alert.textFields?.first?.text else {
                return
            }
            print("입력한 값은 \(input)입니다.")
            
            guard let value = Int(input) else {
                return
            }
            self.getWinner(count: value, select: "짝")
        }
        
        alert.addTextField { textfField in
            textfField.placeholder = "배팅할 구슬의 개수를 입력해주세요."
        }

        alert.addAction(oddBtn)
        alert.addAction(evenBtn)

        self.present(alert, animated: true) {
            print("화면이 띄워졌습니다.")
        }
    }
    
    func getWinner(count: Int, select: String) {

        let com = self.getRandom()
        let comType = com % 2 == 0 ? "짝" : "홀"
        
        var result = comType
        
        if comType == select {
            print("User Win")
            result = result + "(User Win)"
            self.calculateBalls(winner: "user", count: count)
        } else {
            result = result + "(Com Win)"
            print("Computer Win")
            self.calculateBalls(winner: "com", count: count)
        }
        self.resultLabel.text = result

    }
    
    func calculateBalls(winner: String, count: Int) {
        if winner == "com" {
            self.userBallCount = self.userBallCount - count
            self.comBallCount = self.comBallCount + count
        } else {
            self.comBallCount = self.comBallCount - count
            self.userBallCount = self.userBallCount + count
        }
        
        self.userBallCountLabel.text = "\(self.userBallCount)"
        self.computerBallCountLabel.text = "\(self.comBallCount)"
    }

    func getRandom() -> Int {
        return Int(arc4random_uniform(10) + 1)
    }
    
}




