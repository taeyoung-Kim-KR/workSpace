//
//  inputViewController.swift
//  DelegatePatternDemo
//
//  Created by 김태영 on 2022/01/06.
//

import UIKit

protocol UserInfoDelegate {
    func getUserInfo(name: String, age: String)
}

class InputViewController: UIViewController {
    
    var delegate: UserInfoDelegate?
    
    @IBOutlet var userNameTf: UITextField!
    @IBOutlet var userAgeTf: UITextField!
  
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func setUserInfo(_ sender: UIButton) {
        
        guard let userName = self.userNameTf.text, let userAge = self.userAgeTf.text else {
            print("사용자 정보가 없습니다.")
            return
        }
        
        self.delegate?.getUserInfo(name: userName, age: userAge)
        self.navigationController?.popViewController(animated: true)
    }
    
}
