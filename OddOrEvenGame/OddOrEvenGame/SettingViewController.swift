//
//  SettingViewController.swift
//  OddOrEvenGame
//
//  Created by 김태영 on 2022/01/06.
//

import UIKit

protocol SettingDelegate {
    func getBallCount(ballsCount: Int)
}

class SettingViewController: UIViewController {
    @IBOutlet var ballsCounttextField: UITextField!
    
    var settingDelegate: SettingDelegate?
    var defaultBalssCount = 10
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func completeBtnPressed(_ sender: UIButton) {
        
        guard let ballsStr = self.ballsCounttextField.text, let balls = Int(ballsStr) else {
            self.settingDelegate?.getBallCount(ballsCount: self.defaultBalssCount)
            self.dismiss(animated: true, completion: nil)
            return
        }
        self.settingDelegate?.getBallCount(ballsCount: balls)
        self.dismiss(animated: true, completion: nil)
    }
    
    
}
