//
//  ViewController.swift
//  DelegatePatternDemo
//
//  Created by 김태영 on 2022/01/06.
//

import UIKit

class ViewController: UIViewController, UserInfoDelegate {

    @IBOutlet var userName: UILabel!
    @IBOutlet var userAge: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func userInputBtn(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(identifier: "InputViewController") as InputViewController
        viewController.delegate = self
        
        self.navigationController?.pushViewController(viewController, animated: true)
    }

    
    func getUserInfo(name: String, age: String) {
        print("userName \(name), userAge \(age)")
        self.userName.text = name
        self.userAge.text = age
    }
}

