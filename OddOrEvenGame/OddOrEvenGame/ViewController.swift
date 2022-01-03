//
//  ViewController.swift
//  OddOrEvenGame
//
//  Created by 김태영 on 2022/01/03.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var computerBallCountLabel: UILabel!
    @IBOutlet var userBallCountLabel: UILabel!
    
    var comBallCount: Int = 20
    var userBallCount: Int = 20
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        computerBallCountLabel.text = String(comBallCount)
        userBallCountLabel.text = String(userBallCount)
        
        
    }

    @IBAction func gameStartPressed(_ sender: Any) {
        print("게임시작!")
    }
    
}

