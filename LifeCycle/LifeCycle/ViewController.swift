//
//  ViewController.swift
//  LifeCycle
//
//  Created by 김태영 on 2022/01/06.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("뷰가 로드 되었습니다.")
    }
    override func viewWillAppear(_ animated: Bool) {
        print("뷰가 나타날것입니다.")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("뷰가 나타났습니다.")
    }
    override func viewWillDisappear(_ animated: Bool) {
        print("뷰가 사라질 것입니다.")
    }
    override func viewDidDisappear(_ animated: Bool) {
        print("뷰가 사라졌습니다.")
    }
    
    @IBAction func btnPressed(_ sender: UIButton) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(identifier: "SecondController") as SecondController
        
        self.navigationController?.pushViewController(viewController, animated: true)
    }
}

